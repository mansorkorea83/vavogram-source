.class public final Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private final listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->uriString:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->opened:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->opened:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->opened:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_1
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->uriString:Ljava/lang/String;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferStart()V

    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    return-wide v2
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->bytesRemaining:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method
