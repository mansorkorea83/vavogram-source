.class public interface abstract Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAudioTrackInitializationError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;)V
.end method

.method public abstract onAudioTrackUnderrun(IJJ)V
.end method

.method public abstract onAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V
.end method
