.class public final Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
.super Ljava/lang/Object;
.source "DefaultHlsTrackSelector.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;


# static fields
.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_DEFAULT:I = 0x0

.field private static final TYPE_SUBTITLE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private final type:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    return-void
.end method

.method public static newAudioInstance()Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newDefaultInstance(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newSubtitleInstance()Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v1, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string/jumbo v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public selectTracks(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x1

    iget v8, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-eq v8, v12, :cond_0

    iget v8, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    :cond_0
    iget v8, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-ne v8, v12, :cond_1

    iget-object v7, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    :goto_0
    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_b

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v8}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v6

    const/4 v4, 0x0

    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_3

    iget-object v8, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget v9, v6, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer/hls/Variant;

    iget-object v8, v5, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v8, v8, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-gtz v8, :cond_4

    const-string/jumbo v8, "avc"

    invoke-static {v5, v8}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v8, "mp4a"

    invoke-static {v5, v8}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    move-object v2, v1

    :cond_8
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v12, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {p2, p1, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v8}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_b
    return-void
.end method
