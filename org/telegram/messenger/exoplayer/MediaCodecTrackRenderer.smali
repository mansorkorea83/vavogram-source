.class public abstract Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;
.source "MediaCodecTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;,
        Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B = null

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field protected static final SOURCE_STATE_NOT_READY:I = 0x0

.field protected static final SOURCE_STATE_READY:I = 0x1

.field protected static final SOURCE_STATE_READY_READ_MAY_FAIL:I = 0x2


# instance fields
.field private codec:Landroid/media/MediaCodec;

.field public final codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

.field private codecHotswapTimeMs:J

.field private codecIsAdaptive:Z

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field protected final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

.field private format:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

.field private openedDrmSession:Z

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private final sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private sourceState:I

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/SampleSource;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/messenger/exoplayer/SampleSource;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    return-void
.end method

.method public constructor <init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/telegram/messenger/exoplayer/SampleSource;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;)V

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    invoke-static {}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->deviceNeedsAutoFrcWorkaround()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->deviceNeedsAutoFrcWorkaround:Z

    new-instance v0, Lorg/telegram/messenger/exoplayer/CodecCounters;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/CodecCounters;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    return-object v0
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string/jumbo v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "flounder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "flounder_lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "grouper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "tilapia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string/jumbo v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    const/16 v1, 0x12

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-lt v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "OMX.SEC.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    iget v1, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    if-ne v1, v0, :cond_0

    const-string/jumbo v1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "foster"

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NVIDIA"

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->processOutputFormat()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v2, v1, Lorg/telegram/messenger/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/messenger/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getDecodeOnlyIndex(J)I

    move-result v0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onProcessedOutputBuffer(J)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private feedInputBuffer(JZ)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    aget-object v5, v5, v8

    iput-object v5, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v4, :cond_4

    :goto_1
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    sget-object v5, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v6, 0x0

    sget-object v8, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v7, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_8

    const/16 v26, -0x3

    :cond_7
    :goto_2
    const/4 v4, -0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_b

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    const/16 v25, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v26

    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, -0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_7

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_2

    :cond_b
    const/4 v4, -0x4

    move/from16 v0, v26

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v4, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    if-nez v4, :cond_f

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v4, :cond_10

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    new-instance v4, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    :cond_12
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldWaitForKeys(Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v4, :cond_17

    if-nez v10, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    sub-int v11, v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v6, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isDecodeOnly()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v8, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onQueuedInputBuffer(JLjava/nio/ByteBuffer;IZ)V

    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-static {v4, v11}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getFrameworkCryptoInfo(Lorg/telegram/messenger/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-wide/from16 v16, v6

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    :goto_5
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v5, v4, Lorg/telegram/messenger/exoplayer/CodecCounters;->inputBufferCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/messenger/exoplayer/CodecCounters;->inputBufferCount:I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v22, 0x0

    move/from16 v19, v9

    move-wide/from16 v20, v6

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    new-instance v4, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getDecodeOnlyIndex(J)I
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getFrameworkCryptoInfo(Lorg/telegram/messenger/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private getFrameworkMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;)Landroid/media/MediaFormat;
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->deviceNeedsAutoFrcWorkaround:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private isWithinHotswapPeriod()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAndThrowDecoderInitError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitializationError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyDecoderInitializationError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$1;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onOutputStreamEnded()V

    goto :goto_0
.end method

.method private processOutputFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v3, 0x20

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v2, v1, Lorg/telegram/messenger/exoplayer/CodecCounters;->outputFormatChangedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/messenger/exoplayer/CodecCounters;->outputFormatChangedCount:I

    goto :goto_0
.end method

.method private readFormat(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V

    :cond_0
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final codecInitialized()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
.end method

.method protected doSomeWork(JJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_6

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->readFormat(J)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "drainAndFeed"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(JZ)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(JZ)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/CodecCounters;->ensureUpdated()V

    return-void

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method protected flushCodec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    iput v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v0, :cond_1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    goto :goto_0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final getSourceState()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    return v0
.end method

.method protected abstract handlesTrack(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected final handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->handlesTrack(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z

    move-result v0

    return v0
.end method

.method protected final haveFormat()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->isWithinHotswapPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final maybeInitCodec()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    const-string/jumbo v4, "Media requires a DrmSessionManager"

    invoke-direct {v0, v4}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->open(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v9

    if-nez v9, :cond_4

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    const/4 v0, 0x3

    if-eq v9, v0, :cond_5

    const/4 v0, 0x4

    if-ne v9, v0, :cond_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->getMediaCrypto()Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v11

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0, v12}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v13

    :cond_6
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    invoke-virtual {p0, v0, v12, v13}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    if-nez v8, :cond_7

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v5, 0x0

    const v14, -0xc34f

    invoke-direct {v0, v4, v5, v13, v14}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    :cond_7
    iget-object v1, v8, Lorg/telegram/messenger/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    iget-boolean v0, v8, Lorg/telegram/messenger/exoplayer/DecoderInfo;->adaptive:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround:Z

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createByCodecName("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    const-string/jumbo v0, "configureCodec"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v4, v8, Lorg/telegram/messenger/exoplayer/DecoderInfo;->adaptive:Z

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getFrameworkMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5, v11}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    const-string/jumbo v0, "codec.start()"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/TraceUtil;->endSection()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitialized(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_3
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v4, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->codecInitCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->codecInitCount:I

    goto/16 :goto_0

    :catch_0
    move-exception v10

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v0, v4, v10, v13, v5}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto/16 :goto_1

    :catch_1
    move-exception v10

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-direct {v0, v4, v10, v13, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto :goto_2

    :cond_8
    const-wide/16 v4, -0x1

    goto :goto_3
.end method

.method protected onDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;->close()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    throw v0
.end method

.method protected onDiscontinuity(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->flushCodec()V

    :cond_0
    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer/MediaFormatHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-virtual {p0, v2, v3, v0, v4}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    iget v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    iget v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_1
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onOutputStreamEnded()V
    .locals 0

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    return-void
.end method

.method protected onQueuedInputBuffer(JLjava/nio/ByteBuffer;IZ)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    iput v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    iput v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedBuffers:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsFlushWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosPropagationWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsEosFlushWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReceivedEos:Z

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->codecReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/CodecCounters;->codecReleaseCount:I

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected shouldInitCodec()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
