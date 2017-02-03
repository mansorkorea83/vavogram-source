.class final Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    sub-int v3, p3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :goto_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    if-eq v2, p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_1
.end method

.method private parseHeader()Z
    .locals 8

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string/jumbo v3, "TsExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->dataAlignmentIndicator:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsFlag:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->dtsFlag:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, -0x9

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    goto :goto_1
.end method

.method private parseHeaderExtension()V
    .locals 11

    const/16 v10, 0x1e

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->timeUs:J

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsFlag:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v4, v10

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->seenFirstDts:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->dtsFlag:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v10

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->seenFirstDts:Z

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->timeUs:J

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ZLorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    if-eqz p2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_5

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "TsExtractor"

    const-string/jumbo v4, "Unexpected start indicator reading extended header"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-eq v2, v7, :cond_1

    const-string/jumbo v2, "TsExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected start indicator: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " more bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    const/16 v4, 0x9

    invoke-direct {p0, p1, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->parseHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :pswitch_5
    const/16 v2, 0xa

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v2, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->extendedHeaderLength:I

    invoke-direct {p0, p1, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->parseHeaderExtension()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->timeUs:J

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->dataAlignmentIndicator:Z

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-ne v2, v7, :cond_4

    move v0, v3

    :goto_3
    if-lez v0, :cond_3

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->packetFinished()V

    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->setState(I)V

    goto/16 :goto_1

    :cond_4
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->payloadSize:I

    sub-int v0, v1, v2

    goto :goto_3

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->bytesRead:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->seenFirstDts:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
