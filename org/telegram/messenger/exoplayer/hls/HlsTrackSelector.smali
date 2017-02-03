.class public interface abstract Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;
.super Ljava/lang/Object;
.source "HlsTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;
    }
.end annotation


# virtual methods
.method public abstract selectTracks(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
