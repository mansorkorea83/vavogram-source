.class public final Lorg/telegram/messenger/exoplayer/util/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SCRATCH_BITS:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->CHANNELS_BY_AMODE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->SCRATCH_BITS:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x40t 0x1ft 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x11t 0x2bt 0x0t 0x0t
        0x22t 0x56t 0x0t 0x0t
        0x44t 0xact 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xe0t 0x2et 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x80t 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x9t 0x0t 0x0t
        0x0t 0xat 0x0t 0x0t
        0x80t 0xat 0x0t 0x0t
        0x0t 0xbt 0x0t 0x0t
        0x7t 0xbt 0x0t 0x0t
        0x80t 0xbt 0x0t 0x0t
        0x0t 0xct 0x0t 0x0t
        0x0t 0xft 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x18t 0x0t 0x0t
        0x0t 0x1et 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .locals 2

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xfc

    shr-int/lit8 v3, v3, 0x2

    or-int v0, v2, v3

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x20

    return v2
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 3

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int v0, v1, v2

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public static parseDtsFormat([BLjava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 14

    sget-object v11, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->SCRATCH_BITS:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v11, p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->reset([B)V

    const/16 v0, 0x3c

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x6

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v6, v0, v10

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v7, v0, v13

    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v12

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v0, v0

    if-lt v12, v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v6, v0

    const-string/jumbo v1, "audio/vnd.dts"

    const/4 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    aget v0, v0, v12

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v2, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
