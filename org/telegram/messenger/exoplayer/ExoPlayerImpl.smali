.class final Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/ExoPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field private final internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlayWhenReadyAcks:I

.field private playWhenReady:Z

.field private playbackState:I

.field private final selectedTrackIndices:[I

.field private final trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ExoPlayerImpl"

    const-string/jumbo v1, "Init 1.5.10"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-array v0, p1, [[Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl$1;-><init>(Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/os/Handler;Z[III)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blockingSendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->blockingSendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 10

    const-wide/16 v4, 0x64

    const-wide/16 v8, -0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    :goto_1
    long-to-int v4, v4

    goto :goto_0

    :cond_2
    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    goto :goto_1
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTrackCount(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackFormat(II)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget v4, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v3, v4}, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget v4, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v3, v4}, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;->onPlayerStateChanged(ZI)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;->onPlayWhenReadyCommitted()V

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;->onPlayerError(Lorg/telegram/messenger/exoplayer/ExoPlaybackException;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isPlayWhenReadyCommitted()Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs prepare([Lorg/telegram/messenger/exoplayer/TrackRenderer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->trackFormats:[[Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->prepare([Lorg/telegram/messenger/exoplayer/TrackRenderer;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->release()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->seekTo(J)V

    return-void
.end method

.method public sendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->sendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playWhenReady:Z

    iget v1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyAcks:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->playbackState:I

    invoke-interface {v0, p1, v2}, Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedTrack(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->selectedTrackIndices:[I

    aput p2, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->setRendererSelectedTrack(II)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/ExoPlayerImplInternal;->stop()V

    return-void
.end method
