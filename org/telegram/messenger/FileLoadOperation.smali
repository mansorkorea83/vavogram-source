.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field private static final bigFileSizeFrom:I = 0x100000

.field private static final downloadChunkSize:I = 0x8000

.field private static final downloadChunkSizeBig:I = 0x20000

.field private static final maxDownloadRequests:I = 0x4

.field private static final maxDownloadRequestsBig:I = 0x2

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private bytesCountPadding:I

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private datacenter_id:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private downloadedBytes:I

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fiv:Ljava/io/RandomAccessFile;

.field private isForceRequest:Z

.field private iv:[B

.field private key:[B

.field private location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private nextDownloadOffset:I

.field private renameRetryCount:I

.field private requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestsCount:I

.field private started:Z

.field private volatile state:I

.field private storePath:Ljava/io/File;

.field private tempPath:Ljava/io/File;

.field private totalBytesCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 11

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    :try_start_0
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v6, :cond_5

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    :cond_0
    :goto_0
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    :cond_2
    const-string/jumbo v6, ""

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_4

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    :cond_4
    :goto_3
    return-void

    :cond_5
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v6, :cond_0

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_3

    :cond_6
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_1

    :sswitch_0
    const-string/jumbo v7, "video/mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "audio/ogg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    goto :goto_2

    :pswitch_0
    const-string/jumbo v3, ".mp4"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    const-string/jumbo v3, ".ogg"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    :cond_0
    :goto_0
    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz p2, :cond_2

    :goto_1
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "jpg"

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    :try_start_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_2

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method

.method private onFail(ZI)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$4;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$4;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    invoke-interface {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto :goto_0
.end method

.method private onFinishLoadingFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v1, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to rename temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to final = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge v1, v5, :cond_3

    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$3;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FileLoadOperation$3;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    :cond_4
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finished downloading file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v1, p0, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method private processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p2, :cond_e

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v2, :cond_2

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v11, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_b

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-gt v2, v3, :cond_b

    :cond_5
    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v2, :cond_6

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, v2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    if-eqz v2, :cond_6

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, v2, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;F)V

    :cond_9
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    #getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v12}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    :cond_a
    if-eqz v15, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FILE_MIGRATE_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FILE_MIGRATE_"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/util/Scanner;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    :goto_3
    if-nez v17, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :catch_1
    move-exception v13

    const/16 v17, 0x0

    goto :goto_3

    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "OFFSET_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_11

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v13

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "RETRY_LIMIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v2, :cond_14

    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " local_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " access_hash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " volume_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " secret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0
.end method

.method private startDownloadRequest()V
    .locals 13

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v0, v12, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_1

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_5

    add-int/lit8 v0, v9, -0x1

    if-eq v8, v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v0, v2, :cond_6

    :cond_5
    move v7, v12

    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {v10, v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>(Lorg/telegram/messenger/FileLoadOperation$1;)V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    #setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$5;

    invoke-direct {v2, p0, v10}, Lorg/telegram/messenger/FileLoadOperation$5;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x20

    :goto_2
    or-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_8

    const/4 v6, 0x2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    #setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I
    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    move v7, v11

    goto :goto_1

    :cond_7
    move v4, v11

    goto :goto_2

    :cond_8
    const v6, 0x10002

    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$2;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceRequest()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return-void
.end method

.method public setPaths(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    return-void
.end method

.method public start()Z
    .locals 12

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v5, :cond_1

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v5, :cond_a

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/high16 v8, -0x8000

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/32 v10, -0x80000000

    cmp-long v5, v8, v10

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".temp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".iv"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_1
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v8, 0x10

    if-lt v5, v8, :cond_d

    const/high16 v5, 0x2

    :goto_2
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v8, 0x10

    if-lt v5, v8, :cond_e

    const/4 v5, 0x2

    :goto_3
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    new-instance v5, Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    const/4 v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v5, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-long v8, v5

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v5, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v5, v8

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    mul-int/2addr v5, v8

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    :cond_6
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start loading file to temp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " final = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_8

    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v5, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    const-string/jumbo v9, "rws"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_f

    const-wide/16 v8, 0x20

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_f

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v5, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_4
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v9, "rws"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_5
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_10

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_c

    :cond_b
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".temp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ".iv"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_d
    const v5, 0x8000

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x4

    goto/16 :goto_3

    :cond_f
    const/4 v5, 0x0

    :try_start_2
    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_10
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$1;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/FileLoadOperation$1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    :try_start_3
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_6
.end method

.method public wasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    return v0
.end method
