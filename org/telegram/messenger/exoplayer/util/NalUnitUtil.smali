.class public final Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;,
        Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F = null

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B = null

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xe9t 0xa2t 0x8bt 0x3ft
        0x2ft 0xbat 0x68t 0x3ft
        0x8ct 0x2et 0xbat 0x3ft
        0xcat 0x26t 0x9bt 0x3ft
        0xe9t 0xa2t 0xbt 0x40t
        0x2ft 0xbat 0xe8t 0x3ft
        0x8ct 0x2et 0x3at 0x40t
        0xcat 0x26t 0x1bt 0x40t
        0x5dt 0x74t 0xd1t 0x3ft
        0xa3t 0x8bt 0xaet 0x3ft
        0x10t 0x3et 0xf8t 0x3ft
        0x62t 0xdet 0xcet 0x3ft
        0xabt 0xaat 0xaat 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_1
    return-void

    :cond_0
    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sub-int v1, p2, p1

    if-ltz v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return p2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    aget-boolean v3, p3, v5

    if-eqz v3, :cond_3

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    :cond_3
    if-le v1, v4, :cond_4

    aget-boolean v3, p3, v4

    if-eqz v3, :cond_4

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    :cond_4
    if-le v1, v6, :cond_5

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_5

    aget-byte v3, p0, p1

    if-nez v3, :cond_5

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_5

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v0, p1, 0x2

    :goto_2
    if-ge v0, v2, :cond_9

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xfe

    if-eqz v3, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_8

    if-eqz p3, :cond_7

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_0

    if-le v1, v6, :cond_b

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_4
    aput-boolean v3, p3, v5

    if-le v1, v4, :cond_10

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    move v3, v4

    :goto_5
    aput-boolean v3, p3, v4

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_12

    :goto_6
    aput-boolean v4, p3, v6

    goto/16 :goto_1

    :cond_a
    move v3, v5

    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_d

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_c

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_c

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_c

    move v3, v4

    goto :goto_4

    :cond_c
    move v3, v5

    goto :goto_4

    :cond_d
    aget-boolean v3, p3, v4

    if-eqz v3, :cond_e

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_e

    move v3, v4

    goto :goto_4

    :cond_e
    move v3, v5

    goto :goto_4

    :cond_f
    move v3, v5

    goto :goto_5

    :cond_10
    aget-boolean v3, p3, v6

    if-eqz v3, :cond_11

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_11

    move v3, v4

    goto :goto_5

    :cond_11
    move v3, v5

    goto :goto_5

    :cond_12
    move v4, v5

    goto :goto_6
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3

    move v0, p1

    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parsePpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    new-instance v3, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;

    invoke-direct {v3, v1, v2, v0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v3
.end method

.method public static parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    .locals 40

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v30

    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    const/4 v15, 0x1

    const/4 v7, 0x0

    const/16 v2, 0x64

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6e

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7a

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf4

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x56

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x76

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x80

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8a

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    const/4 v2, 0x3

    if-ne v15, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v34

    if-eqz v34, :cond_5

    const/4 v2, 0x3

    if-eq v15, v2, :cond_3

    const/16 v25, 0x8

    :goto_0
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v33

    if-eqz v33, :cond_2

    const/4 v2, 0x6

    move/from16 v0, v24

    if-ge v0, v2, :cond_4

    const/16 v2, 0x10

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->skipScalingList(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V

    :cond_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    :cond_3
    const/16 v25, 0xc

    goto :goto_0

    :cond_4
    const/16 v2, 0x40

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v9, v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v11, v2, 0x4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v29, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v28, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v2, 0x1

    :goto_3
    rsub-int/lit8 v2, v2, 0x2

    mul-int v23, v2, v28

    if-nez v8, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    mul-int/lit8 v4, v29, 0x10

    mul-int/lit8 v5, v23, 0x10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    if-nez v15, :cond_d

    const/16 v16, 0x1

    if-eqz v8, :cond_c

    const/4 v2, 0x1

    :goto_4
    rsub-int/lit8 v17, v2, 0x2

    :goto_5
    add-int v2, v19, v20

    mul-int v2, v2, v16

    sub-int/2addr v4, v2

    add-int v2, v21, v18

    mul-int v2, v2, v17

    sub-int/2addr v5, v2

    :cond_8
    const/high16 v6, 0x3f80

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v37

    if-eqz v37, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    const/16 v2, 0xff

    if-ne v13, v2, :cond_11

    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v32

    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v31

    if-eqz v32, :cond_9

    if-eqz v31, :cond_9

    move/from16 v0, v32

    int-to-float v2, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v6, v2, v38

    :cond_9
    :goto_6
    new-instance v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v2

    :cond_a
    const/4 v2, 0x1

    if-ne v10, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v26, v0

    const/16 v24, 0x0

    :goto_7
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v38, v0

    cmp-long v2, v38, v26

    if-gez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    const/4 v2, 0x3

    if-ne v15, v2, :cond_e

    const/16 v36, 0x1

    :goto_8
    const/4 v2, 0x1

    if-ne v15, v2, :cond_f

    const/16 v35, 0x2

    :goto_9
    move/from16 v16, v36

    if-eqz v8, :cond_10

    const/4 v2, 0x1

    :goto_a
    rsub-int/lit8 v2, v2, 0x2

    mul-int v17, v35, v2

    goto/16 :goto_5

    :cond_e
    const/16 v36, 0x2

    goto :goto_8

    :cond_f
    const/16 v35, 0x1

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v13, v2, :cond_12

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v6, v2, v13

    goto :goto_6

    :cond_12
    const-string/jumbo v2, "NalUnitUtil"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static skipScalingList(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V
    .locals 5

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    :cond_0
    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 14

    sget-object v12, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    :cond_0
    :goto_0
    if-ge v4, p1, :cond_2

    :try_start_0
    invoke-static {p0, v4, p1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v4

    if-ge v4, p1, :cond_0

    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v11, v11

    if-gt v11, v7, :cond_1

    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v13, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    sput-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    :cond_1
    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v7, 0x1

    :try_start_1
    aput v4, v11, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x3

    move v7, v6

    goto :goto_0

    :cond_2
    sub-int v8, p1, v7

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    :try_start_2
    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v3, v11, v2

    sub-int v0, v3, v1

    invoke-static {p0, v1, p0, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v0

    add-int/lit8 v10, v9, 0x1

    const/4 v11, 0x0

    aput-byte v11, p0, v9

    add-int/lit8 v9, v10, 0x1

    const/4 v11, 0x0

    aput-byte v11, p0, v10

    add-int/lit8 v11, v0, 0x3

    add-int/2addr v1, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int v5, v8, v9

    invoke-static {p0, v1, p0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v8

    :catchall_0
    move-exception v11

    move v6, v7

    :goto_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    :catchall_1
    move-exception v11

    goto :goto_2
.end method
