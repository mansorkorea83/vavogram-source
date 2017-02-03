.class public final Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;
.super Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
.source "HlsMasterPlaylist.java"


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioLanguage:Ljava/lang/String;

.field public final muxedCaptionLanguage:Ljava/lang/String;

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/Variant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/Variant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/Variant;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->muxedAudioLanguage:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->muxedCaptionLanguage:Ljava/lang/String;

    return-void
.end method
