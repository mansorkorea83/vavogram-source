.class final Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum(J)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;->length:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 8

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;->offsets:[J

    aget-wide v4, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;->sizes:[I

    aget v0, v0, p1

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public getTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;->timesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
