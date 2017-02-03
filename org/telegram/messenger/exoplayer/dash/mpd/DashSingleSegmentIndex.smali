.class final Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;
.super Ljava/lang/Object;
.source "DashSingleSegmentIndex.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final uri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .locals 0

    return-wide p2
.end method

.method public getFirstSegmentNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum(J)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
