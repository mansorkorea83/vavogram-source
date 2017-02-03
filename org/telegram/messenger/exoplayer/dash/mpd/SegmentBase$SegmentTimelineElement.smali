.class public Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTimelineElement"
.end annotation


# instance fields
.field duration:J

.field startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->duration:J

    return-void
.end method
