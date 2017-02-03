.class public interface abstract Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;
.super Ljava/lang/Object;
.source "HlsTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Output"
.end annotation


# virtual methods
.method public abstract adaptiveTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;)V
.end method

.method public abstract fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V
.end method
