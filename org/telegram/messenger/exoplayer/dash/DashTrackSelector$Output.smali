.class public interface abstract Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;
.super Ljava/lang/Object;
.source "DashTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Output"
.end annotation


# virtual methods
.method public abstract adaptiveTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V
.end method

.method public abstract fixedTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;III)V
.end method
