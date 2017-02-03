.class public final Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
.super Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;
    }
.end annotation


# static fields
.field public static final ENCRYPTION_METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field public static final ENCRYPTION_METHOD_NONE:Ljava/lang/String; = "NONE"


# instance fields
.field public final durationUs:J

.field public final live:Z

.field public final mediaSequence:I

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final targetDurationSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->version:I

    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->live:Z

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method
