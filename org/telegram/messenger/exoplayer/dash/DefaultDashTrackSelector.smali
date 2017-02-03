.class public final Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
.super Ljava/lang/Object;
.source "DefaultDashTrackSelector.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;


# instance fields
.field private final adaptationSetType:I

.field private final context:Landroid/content/Context;

.field private final filterProtectedHdContent:Z

.field private final filterVideoRepresentations:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    return-void
.end method

.method public static newAudioInstance()Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newTextInstance()Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newVideoInstance(Landroid/content/Context;ZZ)Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    iget-object v6, v3, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    iget-object v6, v3, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    iget v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-ne v6, v8, :cond_4

    iget v6, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    if-eqz v6, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    const/4 v10, 0x0

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-static {v8, v9, v10, v6}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v5

    :goto_2
    array-length v4, v5

    if-le v4, v7, :cond_0

    invoke-interface {p3, p1, p2, v1, v5}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;->adaptiveTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V

    :cond_0
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget v6, v5, v2

    invoke-interface {p3, p1, p2, v1, v6}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Util;->firstIntegersArray(I)[I

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_4
    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-interface {p3, p1, p2, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
