.class final Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private hasOutputFormat:Z

.field private pesTimeUs:J

.field private final pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;)V
    .locals 3

    const/16 v2, 0x80

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 7

    const/4 v5, 0x5

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->parseMediaFormat(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_0
.end method

.method private static parseMediaFormat(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 31

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    new-instance v14, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    const/16 v2, 0x2c

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v24

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0x58

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/16 v30, 0x0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v30, v30, 0x59

    :cond_0
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v30, v30, 0x8

    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_2
    move/from16 v0, v30

    invoke-virtual {v14, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    if-lez v24, :cond_3

    rsub-int/lit8 v2, v24, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    const/4 v2, 0x3

    if-ne v15, v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_4
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    const/4 v2, 0x1

    if-eq v15, v2, :cond_5

    const/4 v2, 0x2

    if-ne v15, v2, :cond_7

    :cond_5
    const/16 v29, 0x2

    :goto_1
    const/4 v2, 0x1

    if-ne v15, v2, :cond_8

    const/16 v28, 0x2

    :goto_2
    add-int v2, v17, v18

    mul-int v2, v2, v29

    sub-int/2addr v8, v2

    add-int v2, v19, v16

    mul-int v2, v2, v28

    sub-int/2addr v9, v2

    :cond_6
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_7
    const/16 v29, 0x1

    goto :goto_1

    :cond_8
    const/16 v28, 0x1

    goto :goto_2

    :cond_9
    move/from16 v21, v24

    goto :goto_3

    :cond_a
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->skipScalingList(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)V

    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_c
    invoke-static {v14}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)V

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v21, 0x0

    :goto_4
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_d

    add-int/lit8 v23, v22, 0x4

    add-int/lit8 v2, v23, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/high16 v12, 0x3f80

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    const/16 v2, 0xff

    if-ne v13, v2, :cond_f

    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v26

    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v25

    if-eqz v26, :cond_e

    if-eqz v25, :cond_e

    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    div-float v12, v2, v3

    :cond_e
    :goto_5
    const/4 v2, 0x0

    const-string/jumbo v3, "video/hevc"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    return-object v2

    :cond_f
    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v13, v2, :cond_10

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v12, v2, v13

    goto :goto_5

    :cond_10
    const-string/jumbo v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static skipScalingList(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_0
    if-ne v3, v5, :cond_3

    move v4, v5

    :goto_2
    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0x40

    shl-int/lit8 v7, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    shl-int v7, v6, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v3, v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_5

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v6, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int v6, v3, v4

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    :goto_0
    if-ge v14, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v2, v14, v11, v3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    if-ne v12, v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v11}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v2, v12}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v13

    sub-int v10, v12, v14

    if-lez v10, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v12}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_3
    sub-int v6, v11, v12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v0, v6

    move-wide/from16 v16, v0

    sub-long v4, v8, v16

    if-gez v10, :cond_4

    neg-int v7, v10

    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v3, p0

    move v7, v13

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    add-int/lit8 v14, v12, 0x3

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H265Reader;->totalBytesWritten:J

    return-void
.end method
