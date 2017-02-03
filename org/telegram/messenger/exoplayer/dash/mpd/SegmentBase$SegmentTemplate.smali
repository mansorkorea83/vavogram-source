.class public Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
.super Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTemplate"
.end annotation


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field final initializationTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

.field final mediaTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;)V

    iput-object p10, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    iput-object p11, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    iput-object p12, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInitialization(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v3, v6, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getInitialization(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastSegmentNum(J)I
    .locals 7

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    return v2

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    div-long v0, v2, v4

    iget v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->ceilDivide(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getSegmentUrl(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 14

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v3, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v9

    new-instance v7, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->baseUrl:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    invoke-direct/range {v7 .. v13}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v7

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    mul-long v4, v0, v2

    goto :goto_0
.end method
