.class public final Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCanceled:Z

.field private final sampleDrmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private final sampleFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJILorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/drm/DrmInitData;I)V
    .locals 15

    const/4 v13, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v14, p12

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIZI)V

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->sampleDrmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->sampleDrmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public getMediaFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    const/4 v8, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int/2addr v1, v8

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    const v3, 0x7fffffff

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/upstream/DataSource;IZ)I

    move-result v8

    goto :goto_0

    :cond_0
    iget v5, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method
