.class public Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private volatile bytesLoaded:I

.field private drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIJLorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/MediaFormat;IILorg/telegram/messenger/exoplayer/drm/DrmInitData;ZI)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v7 .. v18}, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIZI)V

    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxWidth:I

    move/from16 v0, p15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxHeight:I

    move-object/from16 v0, p13

    move-wide/from16 v1, p10

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getAdjustedMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;JII)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-void
.end method

.method private static getAdjustedMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;JII)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 5

    const/4 v4, -0x1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object p0

    :cond_2
    if-ne p3, v4, :cond_3

    if-eq p4, v4, :cond_0

    :cond_3
    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithMaxVideoDimensions(II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public final drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-void
.end method

.method public final format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxWidth:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxHeight:I

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getAdjustedMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;JII)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-void
.end method

.method public final getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public final getMediaFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    move-result-object v6

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;JJ)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method

.method public final sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public final sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    return-void
.end method

.method public final sampleMetadata(JIII[B)V
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    add-long/2addr v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V

    return-void
.end method

.method public final seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 0

    return-void
.end method
