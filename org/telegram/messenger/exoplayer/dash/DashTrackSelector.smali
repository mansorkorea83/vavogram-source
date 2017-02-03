.class public interface abstract Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;
.super Ljava/lang/Object;
.source "DashTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;
    }
.end annotation


# virtual methods
.method public abstract selectTracks(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
