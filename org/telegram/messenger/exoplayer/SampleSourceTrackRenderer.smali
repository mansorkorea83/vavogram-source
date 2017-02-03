.class public abstract Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/TrackRenderer;
.source "SampleSourceTrackRenderer.java"


# instance fields
.field private durationUs:J

.field private enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

.field private enabledSourceTrackIndex:I

.field private handledSourceIndices:[I

.field private handledSourceTrackIndices:[I

.field private final sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer/SampleSource;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/TrackRenderer;-><init>()V

    array-length v1, p1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/SampleSource;->register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkForDiscontinuity(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->readDiscontinuity(I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDiscontinuity(J)V

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method private maybeThrowError(Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final doPrepare(J)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v22

    and-int v4, v4, v22

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    const/16 v22, 0x0

    :goto_1
    return v22

    :cond_1
    const/16 v18, 0x0

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    invoke-interface/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v22

    add-int v18, v18, v22

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move/from16 v0, v18

    new-array v9, v0, [I

    move/from16 v0, v18

    new-array v11, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v15, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    move-object/from16 v22, v0

    aget-object v14, v22, v16

    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v17

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v8

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_3

    aput v16, v9, v10

    aput v19, v11, v10

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v22, -0x1

    cmp-long v22, v6, v22

    if-nez v22, :cond_4

    :cond_3
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :catch_0
    move-exception v5

    new-instance v22, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    :cond_4
    iget-wide v0, v8, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v22, v20, v22

    if-nez v22, :cond_5

    const-wide/16 v6, -0x1

    goto :goto_5

    :cond_5
    const-wide/16 v22, -0x2

    cmp-long v22, v20, v22

    if-eqz v22, :cond_3

    move-wide/from16 v0, v20

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_5

    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->durationUs:J

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    const/16 v22, 0x1

    goto/16 :goto_1
.end method

.method protected final doSomeWork(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    move-result v6

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->checkForDiscontinuity(J)J

    move-result-wide p1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->doSomeWork(JJZ)V

    return-void
.end method

.method protected abstract doSomeWork(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->durationUs:J

    return-wide v0
.end method

.method protected final getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    aget v2, v2, p1

    aget-object v0, v1, v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    return-object v1
.end method

.method protected final getTrackCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    array-length v0, v0

    return v0
.end method

.method protected abstract handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->maybeThrowError(Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->maybeThrowError(Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    return-void
.end method

.method protected abstract onDiscontinuity(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected onEnabled(IJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide p2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->handledSourceTrackIndices:[I

    aget v0, v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    invoke-interface {v0, v1, p2, p3}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDiscontinuity(J)V

    return-void
.end method

.method protected onReleased()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->sources:[Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSourceTrackIndex:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v0

    return v0
.end method

.method protected final seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->shiftInputPosition(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->enabledSource:Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->checkForDiscontinuity(J)J

    return-void
.end method

.method protected shiftInputPosition(J)J
    .locals 1

    return-wide p1
.end method
