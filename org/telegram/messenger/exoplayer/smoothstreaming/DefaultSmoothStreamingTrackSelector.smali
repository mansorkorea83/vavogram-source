.class public final Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
.super Ljava/lang/Object;
.source "DefaultSmoothStreamingTrackSelector.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;


# instance fields
.field private final context:Landroid/content/Context;

.field private final filterProtectedHdContent:Z

.field private final filterVideoRepresentations:Z

.field private final streamElementType:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->context:Landroid/content/Context;

    iput p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->streamElementType:I

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterVideoRepresentations:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterProtectedHdContent:Z

    return-void
.end method

.method public static newAudioInstance()Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newTextInstance()Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newVideoInstance(Landroid/content/Context;ZZ)Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v5, v5, v0

    iget-object v4, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v5, v5, v0

    iget v5, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->streamElementType:I

    if-ne v5, v7, :cond_4

    iget v5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->streamElementType:I

    if-ne v5, v6, :cond_3

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterVideoRepresentations:Z

    if-eqz v5, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->context:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterProtectedHdContent:Z

    if-eqz v5, :cond_1

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v7, v8, v9, v5}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v3

    :goto_2
    array-length v2, v3

    if-le v2, v6, :cond_0

    invoke-interface {p2, p1, v0, v3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;->adaptiveTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;I[I)V

    :cond_0
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_4

    aget v5, v3, v1

    invoke-interface {p2, p1, v0, v5}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    array-length v5, v4

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Util;->firstIntegersArray(I)[I

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_4

    invoke-interface {p2, p1, v0, v1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
