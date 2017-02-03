.class public interface abstract Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;
.super Ljava/lang/Object;
.source "MediaCodecTrackRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
.end method

.method public abstract onDecoderInitializationError(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
.end method

.method public abstract onDecoderInitialized(Ljava/lang/String;JJ)V
.end method
