.class final Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private seenFirstDts:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    return-void
.end method

.method private parseHeader()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    return-void
.end method

.method private parseHeaderExtension()V
    .locals 11

    const/16 v10, 0x1e

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->timeUs:J

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v4, v10

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v10

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->timeUs:J

    :cond_1
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->packetFinished()V

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
