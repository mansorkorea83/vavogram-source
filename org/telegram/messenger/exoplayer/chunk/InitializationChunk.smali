.class public final Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/Chunk;
.source "InitializationChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private volatile bytesLoaded:I

.field private drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;I)V
    .locals 7

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I)V

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->loadCanceled:Z

    return-void
.end method

.method public drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-void
.end method

.method public format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-void
.end method

.method public getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getSeekMap()Lorg/telegram/messenger/exoplayer/extractor/SeekMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    return-object v0
.end method

.method public hasDrmInitData()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFormat()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeekMap()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    move-result-object v6

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;JJ)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleMetadata(JIII[B)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    return-void
.end method
