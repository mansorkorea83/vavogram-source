.class Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->adaptiveTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer/hls/Variant;",
        ">;"
    }
.end annotation


# instance fields
.field private final formatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer/chunk/Format;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;->formatComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer/hls/Variant;

    check-cast p2, Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;->compare(Lorg/telegram/messenger/exoplayer/hls/Variant;Lorg/telegram/messenger/exoplayer/hls/Variant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer/hls/Variant;Lorg/telegram/messenger/exoplayer/hls/Variant;)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$2;->formatComparator:Ljava/util/Comparator;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
