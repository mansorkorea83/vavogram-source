.class final Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Id3Reader.java"


# static fields
.field private static final ID3_HEADER_SIZE:I = 0xa


# instance fields
.field private final id3Header:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createId3Format()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 8

    const/16 v7, 0xa

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-ge v3, v7, :cond_1

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    rsub-int/lit8 v3, v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v2

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    :cond_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v3, p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    goto :goto_0
.end method

.method public packetFinished()V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    goto :goto_0
.end method

.method public packetStarted(JZ)V
    .locals 3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleTimeUs:J

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->sampleBytesRead:I

    goto :goto_0
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    return-void
.end method
