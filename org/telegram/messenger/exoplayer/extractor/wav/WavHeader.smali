.class final Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"


# instance fields
.field private final averageBytesPerSecond:I

.field private final bitsPerSample:I

.field private final blockAlignment:I

.field private dataSize:J

.field private dataStartPosition:J

.field private final encoding:I

.field private final numChannels:I

.field private final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->numChannels:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->averageBytesPerSecond:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->bitsPerSample:I

    iput p6, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->encoding:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->numChannels:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    return v0
.end method

.method public getDurationUs()J
    .locals 6

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->dataSize:J

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v4, v4

    div-long v0, v2, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getEncoding()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->encoding:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->numChannels:I

    return v0
.end method

.method public getPosition(J)J
    .locals 7

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v2, v2

    div-long v2, v0, v2

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->dataStartPosition:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getSampleRateHz()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->sampleRateHz:I

    return v0
.end method

.method public getTimeUs(J)J
    .locals 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public hasDataBounds()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->dataStartPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataBounds(JJ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->dataStartPosition:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->dataSize:J

    return-void
.end method
