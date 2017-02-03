.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEsdsPosition(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)I
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    :goto_2
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 25

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/16 v24, 0x0

    if-eqz p8, :cond_6

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v24

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :goto_0
    if-eqz v24, :cond_0

    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_7

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v13

    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_1

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v20

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const/4 v7, 0x0

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_8

    const-string/jumbo v7, "audio/ac3"

    :cond_3
    :goto_2
    const/16 v22, 0x0

    :goto_3
    sub-int v6, v20, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    if-lez v18, :cond_11

    const/4 v6, 0x1

    :goto_4
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v19

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v19

    if-eq v0, v6, :cond_4

    if-eqz p8, :cond_13

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_13

    :cond_4
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_12

    move/from16 v21, v20

    :goto_5
    const/4 v6, -0x1

    move/from16 v0, v21

    if-eq v0, v6, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_5
    :goto_6
    add-int v20, v20, v18

    goto :goto_3

    :cond_6
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_17

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v13, v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_8
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_9

    const-string/jumbo v7, "audio/eac3"

    goto/16 :goto_2

    :cond_9
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_a

    const-string/jumbo v7, "audio/vnd.dts"

    goto/16 :goto_2

    :cond_a
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v6, :cond_b

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_c

    :cond_b
    const-string/jumbo v7, "audio/vnd.dts.hd"

    goto/16 :goto_2

    :cond_c
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_d

    const-string/jumbo v7, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    :cond_d
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_e

    const-string/jumbo v7, "audio/3gpp"

    goto/16 :goto_2

    :cond_e
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_f

    const-string/jumbo v7, "audio/amr-wb"

    goto/16 :goto_2

    :cond_f
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v6, :cond_10

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_3

    :cond_10
    const-string/jumbo v7, "audio/raw"

    goto/16 :goto_2

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)I

    move-result v21

    goto/16 :goto_5

    :cond_13
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_14

    add-int/lit8 v6, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_6

    :cond_14
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_15

    add-int/lit8 v6, v20, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_6

    :cond_15
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v15}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p9

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v6, :cond_17

    if-eqz v7, :cond_17

    const-string/jumbo v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v16, 0x2

    :goto_7
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    if-nez v22, :cond_19

    const/4 v14, 0x0

    :goto_8
    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v16}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    :cond_17
    return-void

    :cond_18
    const/16 v16, -0x1

    goto :goto_7

    :cond_19
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_8
.end method

.method private static parseAvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .locals 8

    add-int/lit8 v7, p1, 0x8

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v2, v7, 0x1

    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v5, 0x3f80

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v4, v7, 0x1f

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v4, :cond_3

    new-instance v6, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v7

    iget v5, v7, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    :cond_3
    new-instance v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v7, v0, v2, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v7
.end method

.method private static parseEdts(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eqz p0, :cond_0

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    new-array v0, v4, [J

    new-array v1, v4, [J

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    if-ne v8, v12, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_2
    aput-wide v10, v0, v6

    if-ne v8, v12, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    :goto_3
    aput-wide v10, v1, v6

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v7

    if-eq v7, v12, :cond_4

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Unsupported media rate."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v10, v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_0

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_2

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v2

    new-array v1, v2, [B

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_1
    return-object v5

    :sswitch_0
    const-string/jumbo v3, "audio/mpeg"

    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "video/mp4v-es"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "video/avc"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "video/hevc"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "audio/ac3"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "audio/eac3"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "audio/vnd.dts"

    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v3, "audio/vnd.dts.hd"

    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static parseHdlr(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit8 v11, p1, 0x8

    add-int/lit8 v11, v11, 0x15

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit8 v7, v11, 0x3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v9, :cond_1

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v11, v8, 0x4

    add-int/2addr v2, v11

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    new-array v0, v2, [B

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v10, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v12, 0x0

    sget-object v13, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v13, v13

    invoke-static {v11, v12, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v1, v11

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v8

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4
.end method

.method private static parseIlst(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 10

    const/4 v9, 0x4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int v0, v6, v8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_DASHES:I

    if-ne v7, v8, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-ge v8, v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int/lit8 v5, v8, -0xc

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v1, v8, :cond_1

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_name:I

    if-ne v1, v8, :cond_2

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v8, :cond_3

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v5, -0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v8, "com.apple.iTunes"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v8

    :goto_2
    return-object v8

    :cond_5
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static parseMdhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    if-nez v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    if-nez v3, :cond_0

    const/4 v7, 0x4

    :cond_0
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v2, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    :cond_1
    const/16 v6, 0x10

    goto :goto_0
.end method

.method private static parseMetaAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    add-int/lit8 v3, v4, -0x8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseIlst(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 4

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)F
    .locals 4

    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    :goto_0
    sub-int v5, v2, p1

    if-ge v5, p2, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v5, v6

    :goto_1
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v5, v8}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v1, v5, :cond_3

    invoke-static {p0, v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v4

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    :goto_2
    const-string/jumbo v5, "frma atom is mandatory"

    invoke-static {v6, v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v6, p3, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    aput-object v5, v6, p4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_0
    return v7

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    add-int/2addr v2, v0

    goto :goto_0
.end method

.method private static parseSchiFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    add-int/lit8 v2, p1, 0x8

    :goto_0
    sub-int v7, v2, p1

    if-ge v7, p2, :cond_2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v1, v7, :cond_1

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v4, :cond_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v7, 0x10

    new-array v5, v7, [B

    array-length v7, v5

    invoke-virtual {p0, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v4, v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    :goto_2
    return-object v6

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    add-int/lit8 v2, p1, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    sub-int v5, v2, p1

    if-ge v5, p2, :cond_3

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_0
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v5, :cond_2

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    :cond_2
    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v5, :cond_0

    invoke-static {p0, v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method public static parseStbl(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v66

    if-eqz v66, :cond_0

    new-instance v61, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;

    move-object/from16 v0, v61

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    :goto_0
    invoke-interface/range {v61 .. v61}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v59

    if-nez v59, :cond_2

    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    const/4 v12, 0x0

    new-array v5, v12, [J

    const/4 v12, 0x0

    new-array v6, v12, [I

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-array v8, v12, [J

    const/4 v12, 0x0

    new-array v9, v12, [I

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    :goto_1
    return-object v4

    :cond_0
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v68

    if-nez v68, :cond_1

    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v12, "Track has no sample table size information"

    invoke-direct {v4, v12}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v61, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    move-object/from16 v0, v61

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    if-nez v21, :cond_3

    const/16 v20, 0x1

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v19, v0

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v63, v0

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v67, v0

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v65

    if-eqz v65, :cond_6

    move-object/from16 v0, v65

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v64, v0

    :goto_2
    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v27

    if-eqz v27, :cond_7

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    :goto_3
    new-instance v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v63

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    const/16 v4, 0xc

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v57, v4, -0x1

    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v69

    const/16 v54, 0x0

    const/16 v58, 0x0

    const/16 v72, 0x0

    if-eqz v26, :cond_4

    const/16 v4, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v58

    :cond_4
    const/16 v45, -0x1

    const/16 v56, 0x0

    if-eqz v64, :cond_5

    const/16 v4, 0xc

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v56

    if-lez v56, :cond_8

    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v45, v4, -0x1

    :cond_5
    :goto_4
    invoke-interface/range {v61 .. v61}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v12, v12, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v57, :cond_9

    if-nez v58, :cond_9

    if-nez v56, :cond_9

    const/16 v40, 0x1

    :goto_5
    const/4 v7, 0x0

    if-nez v40, :cond_19

    move/from16 v0, v59

    new-array v5, v0, [J

    move/from16 v0, v59

    new-array v6, v0, [I

    move/from16 v0, v59

    new-array v8, v0, [J

    move/from16 v0, v59

    new-array v9, v0, [I

    const-wide/16 v74, 0x0

    const-wide/16 v46, 0x0

    const/16 v55, 0x0

    const/16 v39, 0x0

    :goto_6
    move/from16 v0, v39

    move/from16 v1, v59

    if-ge v0, v1, :cond_11

    :goto_7
    if-nez v55, :cond_a

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v46, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v55, v0

    goto :goto_7

    :cond_6
    const/16 v64, 0x0

    goto/16 :goto_2

    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_8
    const/16 v64, 0x0

    goto :goto_4

    :cond_9
    const/16 v40, 0x0

    goto :goto_5

    :cond_a
    if-eqz v26, :cond_c

    :goto_8
    if-nez v54, :cond_b

    if-lez v58, :cond_b

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v54

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v72

    add-int/lit8 v58, v58, -0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v54, v54, -0x1

    :cond_c
    aput-wide v46, v5, v39

    invoke-interface/range {v61 .. v61}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v4

    aput v4, v6, v39

    aget v4, v6, v39

    if-le v4, v7, :cond_d

    aget v7, v6, v39

    :cond_d
    move/from16 v0, v72

    int-to-long v12, v0

    add-long v12, v12, v74

    aput-wide v12, v8, v39

    if-nez v64, :cond_10

    const/4 v4, 0x1

    :goto_9
    aput v4, v9, v39

    move/from16 v0, v39

    move/from16 v1, v45

    if-ne v0, v1, :cond_e

    const/4 v4, 0x1

    aput v4, v9, v39

    add-int/lit8 v56, v56, -0x1

    if-lez v56, :cond_e

    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v45, v4, -0x1

    :cond_e
    move/from16 v0, v69

    int-to-long v12, v0

    add-long v74, v74, v12

    add-int/lit8 v53, v53, -0x1

    if-nez v53, :cond_f

    if-lez v57, :cond_f

    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    invoke-virtual/range {v67 .. v67}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v69

    add-int/lit8 v57, v57, -0x1

    :cond_f
    aget v4, v6, v39

    int-to-long v12, v4

    add-long v46, v46, v12

    add-int/lit8 v55, v55, -0x1

    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_6

    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    :cond_11
    if-nez v54, :cond_12

    const/4 v4, 0x1

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    :goto_b
    if-lez v58, :cond_14

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_c
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    add-int/lit8 v58, v58, -0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    :cond_14
    if-nez v56, :cond_15

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v53, :cond_16

    const/4 v4, 0x1

    :goto_e
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v55, :cond_17

    const/4 v4, 0x1

    :goto_f
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v57, :cond_18

    const/4 v4, 0x1

    :goto_10
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-nez v4, :cond_1b

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_15
    const/4 v4, 0x0

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    goto :goto_f

    :cond_18
    const/4 v4, 0x0

    goto :goto_10

    :cond_19
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [J

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [I

    move-object/from16 v23, v0

    :goto_12
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v12, v22, v4

    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v12, v23, v4

    goto :goto_12

    :cond_1a
    invoke-interface/range {v61 .. v61}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v35

    move/from16 v0, v69

    int-to-long v12, v0

    move/from16 v0, v35

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v12, v13}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v52

    move-object/from16 v0, v52

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    move-object/from16 v0, v52

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    move-object/from16 v0, v52

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    move-object/from16 v0, v52

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    move-object/from16 v0, v52

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    goto :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_1d

    const/16 v39, 0x0

    :goto_13
    array-length v4, v8

    move/from16 v0, v39

    if-ge v0, v4, :cond_1c

    aget-wide v12, v8, v39

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    sub-long v10, v12, v14

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v8, v39

    add-int/lit8 v39, v39, 0x1

    goto :goto_13

    :cond_1c
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_1d
    const/16 v31, 0x0

    const/16 v44, 0x0

    const/16 v24, 0x0

    const/16 v39, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v42, v4, v39

    const-wide/16 v12, -0x1

    cmp-long v4, v42, v12

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v39

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v42

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v62

    add-long v12, v42, v10

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v4, v14}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v34

    sub-int v4, v34, v62

    add-int v31, v31, v4

    move/from16 v0, v44

    move/from16 v1, v62

    if-eq v0, v1, :cond_1f

    const/4 v4, 0x1

    :goto_15
    or-int v24, v24, v4

    move/from16 v44, v34

    :cond_1e
    add-int/lit8 v39, v39, 0x1

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    goto :goto_15

    :cond_20
    move/from16 v0, v31

    move/from16 v1, v59

    if-eq v0, v1, :cond_23

    const/4 v4, 0x1

    :goto_16
    or-int v24, v24, v4

    if-eqz v24, :cond_24

    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v30, v0

    :goto_17
    if-eqz v24, :cond_25

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v32, v0

    :goto_18
    if-eqz v24, :cond_26

    const/16 v29, 0x0

    :goto_19
    if-eqz v24, :cond_27

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v28, v0

    :goto_1a
    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v33, v0

    const-wide/16 v48, 0x0

    const/16 v60, 0x0

    const/16 v39, 0x0

    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v42, v4, v39

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v39

    const-wide/16 v12, -0x1

    cmp-long v4, v42, v12

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v36, v42, v12

    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v42

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v62

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, v36

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v34

    if-eqz v24, :cond_21

    sub-int v25, v34, v62

    move/from16 v0, v62

    move-object/from16 v1, v30

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v62

    move-object/from16 v1, v32

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v62

    move-object/from16 v1, v28

    move/from16 v2, v60

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    move/from16 v41, v62

    :goto_1c
    move/from16 v0, v41

    move/from16 v1, v34

    if-ge v0, v1, :cond_28

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    move-wide/from16 v12, v48

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v50

    aget-wide v12, v8, v41

    sub-long v12, v12, v42

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v70

    add-long v12, v50, v70

    aput-wide v12, v33, v60

    if-eqz v24, :cond_22

    aget v4, v32, v60

    move/from16 v0, v29

    if-le v4, v0, :cond_22

    aget v29, v6, v41

    :cond_22
    add-int/lit8 v60, v60, 0x1

    add-int/lit8 v41, v41, 0x1

    goto :goto_1c

    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_24
    move-object/from16 v30, v5

    goto/16 :goto_17

    :cond_25
    move-object/from16 v32, v6

    goto/16 :goto_18

    :cond_26
    move/from16 v29, v7

    goto/16 :goto_19

    :cond_27
    move-object/from16 v28, v9

    goto/16 :goto_1a

    :cond_28
    add-long v48, v48, v10

    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1b

    :cond_29
    const/16 v38, 0x0

    const/16 v39, 0x0

    :goto_1d
    move-object/from16 v0, v28

    array-length v4, v0

    move/from16 v0, v39

    if-ge v0, v4, :cond_2b

    if-nez v38, :cond_2b

    aget v4, v28, v39

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    :goto_1e
    or-int v38, v38, v4

    add-int/lit8 v39, v39, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v4, 0x0

    goto :goto_1e

    :cond_2b
    if-nez v38, :cond_2c

    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v12, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v4, v12}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2c
    new-instance v12, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v13, v30

    move-object/from16 v14, v32

    move/from16 v15, v29

    move-object/from16 v16, v33

    move-object/from16 v17, v28

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    move-object v4, v12

    goto/16 :goto_1
.end method

.method private static parseStsd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .locals 24

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    new-instance v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v11, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v7, "childAtomSize should be positive"

    invoke-static {v3, v7}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v4, v3, :cond_0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v4, v3, :cond_3

    :cond_0
    move-object/from16 v3, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_1
    :goto_2
    add-int v3, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v4, v3, :cond_4

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v4, v3, :cond_5

    :cond_4
    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v11

    move/from16 v23, v12

    invoke-static/range {v13 .. v23}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    :cond_5
    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v4, v3, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_2

    :cond_6
    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v4, v3, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_2

    :cond_7
    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v4, v3, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_2

    :cond_8
    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v4, v3, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_2

    :cond_9
    return-object v11
.end method

.method private static parseTkhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .locals 20

    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v16

    if-nez v16, :cond_2

    const/16 v17, 0x8

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v9

    if-nez v16, :cond_3

    const/4 v8, 0x4

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    add-int v18, v9, v13

    aget-byte v17, v17, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/4 v10, 0x0

    :cond_0
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const-wide/16 v6, -0x1

    :cond_1
    :goto_3
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v11, 0x1

    if-nez v2, :cond_7

    if-ne v3, v11, :cond_7

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    if-nez v5, :cond_7

    const/16 v14, 0x5a

    :goto_4
    new-instance v17, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6, v7, v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v17

    :cond_2
    const/16 v17, 0x10

    goto :goto_0

    :cond_3
    const/16 v8, 0x8

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_5
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-nez v17, :cond_1

    const-wide/16 v6, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_5

    :cond_7
    if-nez v2, :cond_8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    if-ne v4, v11, :cond_8

    if-nez v5, :cond_8

    const/16 v14, 0x10e

    goto :goto_4

    :cond_8
    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    const/16 v14, 0xb4

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    goto :goto_4
.end method

.method public static parseTrak(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    .locals 34

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v29

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v15

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v2, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v32

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide p2

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    const-wide/16 v10, -0x1

    :goto_1
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v30

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v28

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v31

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v27

    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v2, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    goto :goto_1

    :cond_3
    new-instance v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer/MediaFormat;[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0
.end method

.method public static parseUdta(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6

    const/4 v3, 0x0

    const/16 v5, 0x8

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :goto_1
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lt v4, v5, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMetaAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 25

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    const/16 v24, 0x0

    const/high16 v16, 0x3f80

    const/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v20

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :cond_0
    const/4 v14, 0x0

    const/4 v7, 0x0

    :goto_0
    sub-int v6, v20, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int v6, v6, p2

    move/from16 v0, p3

    if-ne v6, v0, :cond_2

    :cond_1
    if-nez v7, :cond_10

    :goto_1
    return-void

    :cond_2
    if-lez v18, :cond_4

    const/4 v6, 0x1

    :goto_2
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v19

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_6

    if-nez v7, :cond_5

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v7, "video/avc"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p8

    iput v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v24, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    move/from16 v16, v0

    :cond_3
    :goto_4
    add-int v20, v20, v18

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_8

    if-nez v7, :cond_7

    const/4 v6, 0x1

    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v7, "video/hevc"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p8

    iput v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_a

    if-nez v7, :cond_9

    const/4 v6, 0x1

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v7, "video/3gpp"

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_c

    if-nez v7, :cond_b

    const/4 v6, 0x1

    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)F

    move-result v16

    const/16 v24, 0x1

    goto :goto_4

    :cond_d
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vpcC:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_3

    if-nez v7, :cond_e

    const/4 v6, 0x1

    :goto_8
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_f

    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    :goto_9
    goto/16 :goto_4

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    goto :goto_9

    :cond_10
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-wide/from16 v10, p5

    move/from16 v15, p7

    invoke-static/range {v6 .. v16}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_1
.end method
