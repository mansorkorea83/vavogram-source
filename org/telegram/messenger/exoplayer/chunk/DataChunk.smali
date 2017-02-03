.class public abstract Lorg/telegram/messenger/exoplayer/chunk/DataChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private limit:I

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I)V

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    return-void
.end method

.method private maybeExpandData()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    if-nez v0, :cond_1

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I

    add-int/lit16 v1, v1, 0x4000

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->loadCanceled:Z

    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, -0x1

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eq v0, v5, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->maybeExpandData()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I

    const/16 v4, 0x4000

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    if-eq v0, v5, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->loadCanceled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->limit:I

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->consume([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    return-void
.end method
