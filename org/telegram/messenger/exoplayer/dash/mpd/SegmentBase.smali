.class public abstract Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;,
        Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;,
        Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;,
        Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;,
        Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field final initialization:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

.field final presentationTimeOffset:J

.field final timescale:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;->initialization:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;->timescale:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;->presentationTimeOffset:J

    return-void
.end method


# virtual methods
.method public getInitialization(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;->initialization:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public getPresentationTimeOffsetUs()J
    .locals 6

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;->presentationTimeOffset:J

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
