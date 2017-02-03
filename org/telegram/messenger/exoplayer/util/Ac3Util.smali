.class public final Lorg/telegram/messenger/exoplayer/util/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x13

    const/4 v1, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x80t 0xbbt 0x0t 0x0t
        0x44t 0xact 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xc0t 0x5dt 0x0t 0x0t
        0x22t 0x56t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x45t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0x5ct 0x1t 0x0t 0x0t
        0xa1t 0x1t 0x0t 0x0t
        0xe7t 0x1t 0x0t 0x0t
        0x2dt 0x2t 0x0t 0x0t
        0xb8t 0x2t 0x0t 0x0t
        0x43t 0x3t 0x0t 0x0t
        0xcft 0x3t 0x0t 0x0t
        0x5at 0x4t 0x0t 0x0t
        0xe5t 0x4t 0x0t 0x0t
        0x71t 0x5t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v2, p0

    const v2, 0xac44

    if-ne v1, v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    div-int/lit8 v3, p1, 0x2

    aget v2, v2, v3

    rem-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    :goto_0
    return v2

    :cond_0
    sget-object v2, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    div-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    const/16 v2, 0x7d00

    if-ne v1, v2, :cond_1

    mul-int/lit8 v2, v0, 0x6

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v0, 0x4

    goto :goto_0
.end method

.method public static parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 12

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v10, v0, 0x6

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v11, 0x38

    shr-int/lit8 v1, v1, 0x3

    aget v6, v0, v1

    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    const-string/jumbo v1, "audio/ac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-wide v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeFormat(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 14

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq v10, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_0
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_1
    const/4 v0, 0x2

    if-ne v10, v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    const-string/jumbo v1, "audio/ac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v4, v0, v10

    if-eqz v12, :cond_3

    const/4 v0, 0x1

    :goto_0
    add-int v6, v4, v0

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v11

    const/4 v8, 0x0

    move-object v0, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 4

    const/4 v3, 0x4

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    aget-byte v2, p0, v3

    and-int/lit8 v0, v2, 0x3f

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v2

    return v2
.end method

.method public static parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v10, v0, 0x6

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v11, 0xe

    shr-int/lit8 v1, v1, 0x1

    aget v6, v0, v1

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    const-string/jumbo v1, "audio/eac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-wide v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v0, v1, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    return v1

    :cond_0
    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    goto :goto_0
.end method

.method public static parseEAc3SyncframeAudioSampleCount([B)I
    .locals 3

    const/4 v2, 0x4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static parseEAc3SyncframeSize([B)I
    .locals 2

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static parseEac3SyncframeFormat(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 14

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v0, 0x3

    if-ne v11, v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    aget v7, v0, v1

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    const-string/jumbo v1, "audio/eac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v4, v0, v10

    if-eqz v12, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int v6, v4, v0

    const/4 v8, 0x0

    move-object v0, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v11

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
