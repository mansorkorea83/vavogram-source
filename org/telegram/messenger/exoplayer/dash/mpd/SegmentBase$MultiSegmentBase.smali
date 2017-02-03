.class public abstract Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
.super Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final duration:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJ)V

    iput p6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    iput-object p9, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    return v0
.end method

.method public abstract getLastSegmentNum(J)I
.end method

.method public final getSegmentDurationUs(IJ)J
    .locals 6

    const-wide/32 v4, 0xf4240

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v2, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->duration:J

    mul-long v2, v0, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v2

    sub-long v2, p2, v2

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v2, v4

    goto :goto_0
.end method

.method public getSegmentNum(JJ)I
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v6

    move v8, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v16, 0xf4240

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    move-wide/from16 v16, v0

    div-long v4, v14, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    div-long v14, p1, v4

    long-to-int v14, v14

    add-int v12, v13, v14

    if-ge v12, v8, :cond_1

    move v12, v8

    :cond_0
    :goto_0
    return v12

    :cond_1
    const/4 v13, -0x1

    if-eq v7, v13, :cond_0

    if-le v12, v7, :cond_0

    move v12, v7

    goto :goto_0

    :cond_2
    :goto_1
    if-gt v8, v7, :cond_5

    add-int v13, v8, v7

    div-int/lit8 v9, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v10

    cmp-long v13, v10, p1

    if-gez v13, :cond_3

    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_3
    cmp-long v13, v10, p1

    if-lez v13, :cond_4

    add-int/lit8 v7, v9, -0x1

    goto :goto_1

    :cond_4
    move v12, v9

    goto :goto_0

    :cond_5
    if-ne v8, v6, :cond_6

    move v13, v8

    :goto_2
    move v12, v13

    goto :goto_0

    :cond_6
    move v13, v7

    goto :goto_2
.end method

.method public final getSegmentTimeUs(I)J
    .locals 6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long v0, v2, v4

    :goto_0
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    return-wide v2

    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v2, p1, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v0, v2, v4

    goto :goto_0
.end method

.method public abstract getSegmentUrl(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
.end method

.method public isExplicit()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
