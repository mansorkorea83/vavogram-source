.class public final Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/upstream/TransferListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->opened:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->opened:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->opened:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_1
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    :try_start_0
    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "/android_asset/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->position:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v4, v0}, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v4

    :cond_1
    :try_start_1
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_5

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->opened:Z

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferStart()V

    :cond_4
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v4

    :cond_5
    :try_start_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    move v1, p3

    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
