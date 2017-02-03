.class public final Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:J

.field public final byterangeOffset:J

.field public final discontinuitySequenceNumber:I

.field public final durationSecs:D

.field public final encryptionIV:Ljava/lang/String;

.field public final encryptionKeyUri:Ljava/lang/String;

.field public final isEncrypted:Z

.field public final startTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DIJZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    iput p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    iput-object p8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    iput-object p9, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
