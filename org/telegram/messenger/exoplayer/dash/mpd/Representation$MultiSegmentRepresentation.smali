.class public Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;
.super Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;
.source "Representation.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field private final segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$1;)V

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v0

    return v0
.end method

.method public getIndex()Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;
    .locals 0

    return-object p0
.end method

.method public getIndexUri()Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastSegmentNum(J)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method
