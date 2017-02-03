.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;
.super Landroid/os/AsyncTask;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapOrientation:I

.field private final downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

.field private dropFolder:Ljava/io/File;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->handler:Landroid/os/Handler;

    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    return-void
.end method

.method private createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "HockeySDK/Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    const-string/jumbo v1, "connection"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private downloadAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->createConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    const-string/jumbo v14, "Status"

    invoke-virtual {v2, v14}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v14, "200"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v14, 0x400

    new-array v4, v14, [B

    const/4 v3, 0x0

    const-wide/16 v12, 0x0

    :goto_1
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_1

    int-to-long v14, v3

    add-long/2addr v12, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const-wide/16 v16, 0x64

    mul-long v16, v16, v12

    int-to-long v0, v8

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private loadImageThumbnail()V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    iget-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v5}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;

    move-result-object v5

    invoke-virtual {v5}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v5}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lnet/hockeyapp/android/utils/ImageUtils;->determineOrientation(Ljava/io/File;)I

    move-result v5

    iput v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    iget v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getWidthLandscape()I

    move-result v4

    :goto_0
    iget v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    if-ne v5, v7, :cond_1

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getMaxHeightLandscape()I

    move-result v3

    :goto_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->dropFolder:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v4, v3}, Lnet/hockeyapp/android/utils/ImageUtils;->decodeSampledBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getWidthPortrait()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getMaxHeightPortrait()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v5, 0x0

    iput-object v5, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->isAvailableInCache()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Cached..."

    invoke-static {v2}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->loadImageThumbnail()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, "Downloading..."

    invoke-static {v2}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->getCacheId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->loadImageThumbnail()V

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->setSuccess(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->bitmapOrientation:I

    invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/views/AttachmentView;->setImage(Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->downloadJob:Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;

    invoke-virtual {v1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->hasRetry()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->signalImageLoadingError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
