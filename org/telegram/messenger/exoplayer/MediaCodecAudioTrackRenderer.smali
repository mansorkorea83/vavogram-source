.class public Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field public static final MSG_SET_PLAYBACK_PARAMS:I = 0x2

.field public static final MSG_SET_VOLUME:I = 0x1


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

.field private audioTrackHasData:Z

.field private currentPositionUs:J

.field private final eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

.field private lastFeedElapsedRealtimeMs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V
    .locals 9

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

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    return-void
.end method

.method public constructor <init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-direct {v0, p7, p8}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    return-object v0
.end method

.method private notifyAudioTrackInitializationError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$1;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyAudioTrackUnderrun(IJJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$3;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;-><init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "mime"

    invoke-virtual {p3, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mime"

    const-string/jumbo v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string/jumbo v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMediaClock()Lorg/telegram/messenger/exoplayer/MediaClock;
    .locals 0

    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    return-wide v2

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleAudioTrackDiscontinuity()V
    .locals 0

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "audio/x-unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isEnded()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->isReady()Z

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

.method protected onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method protected onDisabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    throw v0
.end method

.method protected onDiscontinuity(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onDiscontinuity(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->reset()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

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

    const-string/jumbo v0, "audio/raw"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->pcmEncoding:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 7

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    :goto_2
    const-string/jumbo v5, "channel-count"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "sample-rate"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->pcmEncoding:I

    invoke-virtual {v5, v2, v0, v4, v6}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->configure(Ljava/lang/String;III)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "audio/raw"

    goto :goto_1

    :cond_2
    move-object v1, p2

    goto :goto_2
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->handleEndOfStream()V

    return-void
.end method

.method protected onStarted()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pause()V

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p7

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-eqz p9, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->handleDiscontinuity()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->initialize(I)I

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->play()V

    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p7

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p7

    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p7

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v9, p6

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;IIJ)I

    move-result v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->handleAudioTrackDiscontinuity()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    :cond_3
    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lorg/telegram/messenger/exoplayer/CodecCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->initialize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->onAudioSessionId(I)V
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackInitializationError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J

    sub-long v6, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getBufferSizeUs()J

    move-result-wide v16

    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_6

    const-wide/16 v4, -0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getBufferSize()I

    move-result v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackUnderrun(IJJ)V

    goto/16 :goto_2

    :cond_6
    const-wide/16 v2, 0x3e8

    div-long v4, v16, v2

    goto :goto_3

    :catch_1
    move-exception v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
