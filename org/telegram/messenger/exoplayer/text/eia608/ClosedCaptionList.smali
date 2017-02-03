.class final Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;
.super Ljava/lang/Object;
.source "ClosedCaptionList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;",
        ">;"
    }
.end annotation


# instance fields
.field public final captions:[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

.field public final decodeOnly:Z

.field public final timeUs:J


# direct methods
.method public constructor <init>(JZ[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->decodeOnly:Z

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->compareTo(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;)I
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    sub-long v0, v2, v4

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
