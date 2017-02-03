.class public final Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptiveEvaluator"
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;)V
    .locals 7

    const/16 v4, 0x61a8

    const v2, 0xc3500

    const/16 v3, 0x2710

    const/high16 v6, 0x3f40

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;IIIIF)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;IIIIF)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxInitialBitrate:I

    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationForQualityIncreaseUs:J

    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxDurationForQualityDecreaseUs:J

    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationToRetainAfterDiscardUs:J

    iput p6, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthFraction:F

    return-void
.end method

.method private determineIdealFormat([Lorg/telegram/messenger/exoplayer/chunk/Format;J)Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 6

    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxInitialBitrate:I

    int-to-long v0, v4

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-object v2, p1, v3

    iget v4, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    :goto_2
    return-object v2

    :cond_0
    long-to-float v4, p2

    iget v5, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthFraction:F

    mul-float/2addr v4, v5

    float-to-long v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v2, p1, v4

    goto :goto_2
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public evaluate(Ljava/util/List;J[Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lorg/telegram/messenger/exoplayer/chunk/Format;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    const-wide/16 v2, 0x0

    :goto_0
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->bandwidthMeter:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v12

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->determineIdealFormat([Lorg/telegram/messenger/exoplayer/chunk/Format;J)Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v8

    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    iget v12, v8, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget v13, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    if-le v12, v13, :cond_3

    const/4 v9, 0x1

    :goto_1
    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    iget v12, v8, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget v13, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    if-ge v12, v13, :cond_4

    const/4 v10, 0x1

    :goto_2
    if-eqz v9, :cond_7

    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationForQualityIncreaseUs:J

    cmp-long v12, v2, v12

    if-gez v12, :cond_5

    move-object v8, v4

    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    if-eq v8, v4, :cond_1

    const/4 v12, 0x3

    move-object/from16 v0, p5

    iput v12, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    :cond_1
    move-object/from16 v0, p5

    iput-object v8, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;

    iget-wide v12, v12, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->endTimeUs:J

    sub-long v2, v12, p2

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationToRetainAfterDiscardUs:J

    cmp-long v12, v2, v12

    if-ltz v12, :cond_0

    const/4 v5, 0x1

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;

    iget-wide v12, v11, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v12, p2

    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->minDurationToRetainAfterDiscardUs:J

    cmp-long v12, v6, v12

    if-ltz v12, :cond_6

    iget-object v12, v11, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v12, v12, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget v13, v8, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    if-ge v12, v13, :cond_6

    iget-object v12, v11, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v12, v12, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    iget v13, v8, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-ge v12, v13, :cond_6

    iget-object v12, v11, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v12, v12, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    const/16 v13, 0x2d0

    if-ge v12, v13, :cond_6

    iget-object v12, v11, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v12, v12, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    const/16 v13, 0x500

    if-ge v12, v13, :cond_6

    move-object/from16 v0, p5

    iput v5, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;->maxDurationForQualityDecreaseUs:J

    cmp-long v12, v2, v12

    if-ltz v12, :cond_0

    move-object v8, v4

    goto :goto_3
.end method
