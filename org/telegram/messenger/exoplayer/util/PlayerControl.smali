.class public Lorg/telegram/messenger/exoplayer/util/PlayerControl;
.super Ljava/lang/Object;
.source "PlayerControl.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private final exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/ExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public seekTo(I)V
    .locals 6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->seekTo(J)V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->getDuration()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v0, v2

    goto :goto_0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/PlayerControl;->exoPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method
