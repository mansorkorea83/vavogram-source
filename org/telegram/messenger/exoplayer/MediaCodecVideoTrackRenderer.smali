.class public Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecVideoTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field public static final MSG_SET_SURFACE:I = 0x1


# instance fields
.field private final allowedJoiningTimeUs:J

.field private consecutiveDroppedFrameCount:I

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrameCount:I

.field private final eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

.field private final frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;

.field private joiningDeadlineUs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedUnappliedRotationDegrees:I

.field private lastReportedWidth:I

.field private final maxDroppedFrameCountToNotify:I

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private reportedDrawnToSurface:Z

.field private surface:Landroid/view/Surface;

.field private final videoScalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;I)V
    .locals 8

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJ)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;IJLorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer/SampleSource;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecSelector;",
            "IJ",
            "Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;",
            "I)V"
        }
    .end annotation

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;

    iput p4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p5

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move/from16 v0, p11

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    const/high16 v2, -0x4080

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    const/high16 v2, -0x4080

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    const/high16 v2, -0x4080

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    return-object v0
.end method

.method private maybeNotifyDrawnToSurface()V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrameCount()V
    .locals 8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v4, v6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v6, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;

    invoke-direct {v6, p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;IJ)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    goto :goto_0
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedUnappliedRotationDegrees:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentUnappliedRotationDegrees:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iput v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedUnappliedRotationDegrees:I

    iput v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private maybeSetMaxInputSize(Landroid/media/MediaFormat;Z)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string/jumbo v5, "max-input-size"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_2

    const-string/jumbo v5, "max-height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "max-height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    const-string/jumbo v5, "width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_3

    const-string/jumbo v5, "max-width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "max-width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    const-string/jumbo v5, "mime"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int v2, v3, v0

    const/4 v4, 0x2

    :goto_2
    mul-int/lit8 v5, v2, 0x3

    mul-int/lit8 v6, v4, 0x2

    div-int v1, v5, v6

    const-string/jumbo v5, "max-input-size"

    invoke-virtual {p1, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v7, "video/3gpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "video/mp4v-es"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "video/avc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x5

    goto :goto_1

    :pswitch_1
    const-string/jumbo v5, "BRAVIA 4K 2015"

    sget-object v6, Lorg/telegram/messenger/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v5, v3, 0xf

    div-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v0, 0xf

    div-int/lit8 v6, v6, 0x10

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    mul-int/lit8 v2, v5, 0x10

    const/4 v4, 0x2

    goto :goto_2

    :pswitch_2
    mul-int v2, v3, v0

    const/4 v4, 0x2

    goto :goto_2

    :pswitch_3
    mul-int v2, v3, v0

    const/4 v4, 0x4

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 2

    iget-object v0, p4, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p3, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    iget v1, p4, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    iget v1, p4, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeSetMaxInputSize(Landroid/media/MediaFormat;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3

    const-string/jumbo v0, "dropVideoBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->maxConsecutiveDroppedOutputBufferCount:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    :cond_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlesTrack(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "video/x-unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected final haveRenderedFirstFrame()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    return v0
.end method

.method protected isReady()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->getSourceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    move v0, v1

    goto :goto_0
.end method

.method protected onDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->disable()V

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    return-void
.end method

.method protected onDiscontinuity(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDiscontinuity(J)V

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    return-void
.end method

.method protected onEnabled(IJZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onEnabled(IJZ)V

    if-eqz p4, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    goto :goto_1
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4

    const-string/jumbo v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "crop-bottom"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "crop-top"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    if-eqz v0, :cond_4

    const-string/jumbo v2, "crop-bottom"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "crop-top"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    :goto_2
    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingPixelWidthHeightRatio:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    sget v2, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    const/high16 v2, 0x3f80

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    :cond_1
    :goto_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    invoke-virtual {p1, v2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "width"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "height"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_5
    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->pendingRotationDegrees:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->currentUnappliedRotationDegrees:I

    goto :goto_3
.end method

.method protected onStarted()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 23

    if-eqz p9, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v9, :cond_2

    sget v9, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v9

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v9, v0, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v12, v18, p3

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    sub-long v18, v18, p1

    sub-long v10, v18, v12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v10

    add-long v16, v14, v18

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v6

    sub-long v18, v6, v14

    const-wide/16 v20, 0x3e8

    div-long v10, v18, v20

    const-wide/16 v18, -0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_4
    sget v9, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    const-wide/32 v18, 0xc350

    cmp-long v9, v10, v18

    if-gez v9, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    const-wide/16 v18, 0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_7

    const-wide/16 v18, 0x2af8

    cmp-long v9, v10, v18

    if-lez v9, :cond_6

    const-wide/16 v18, 0x2710

    sub-long v18, v10, v18

    const-wide/16 v20, 0x3e8

    :try_start_0
    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->consecutiveDroppedFrameCount:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2

    const-string/jumbo v0, "skipVideoBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    return-void
.end method
