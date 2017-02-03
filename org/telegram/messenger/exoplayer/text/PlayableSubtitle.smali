.class final Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;
.super Ljava/lang/Object;
.source "PlayableSubtitle.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/Subtitle;


# instance fields
.field private final offsetUs:J

.field public final startTimeUs:J

.field private final subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/text/Subtitle;ZJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->startTimeUs:J

    if-eqz p2, :cond_0

    :goto_0
    add-long v0, p3, p5

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->offsetUs:J

    return-void

    :cond_0
    const-wide/16 p3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->offsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTime(I)J
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->offsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/text/Subtitle;->getEventTimeCount()I

    move-result v0

    return v0
.end method

.method public getLastEventTime()J
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/text/Subtitle;->getLastEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->offsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->subtitle:Lorg/telegram/messenger/exoplayer/text/Subtitle;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->offsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result v0

    return v0
.end method
