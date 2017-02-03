.class public final Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I = null

.field private static final BITRATE_V1_L2:[I = null

.field private static final BITRATE_V1_L3:[I = null

.field private static final BITRATE_V2:[I = null

.field private static final BITRATE_V2_L1:[I = null

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/16 v3, 0xe

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "audio/mpeg-L1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "audio/mpeg-L2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "audio/mpeg"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    :array_0
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
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
    .end array-data

    :array_5
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, -0x20

    const/4 v9, 0x3

    const/4 v7, -0x1

    and-int v8, p0, v10

    if-eq v8, v10, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    ushr-int/lit8 v8, p0, 0x13

    and-int/lit8 v6, v8, 0x3

    if-eq v6, v11, :cond_0

    ushr-int/lit8 v8, p0, 0x11

    and-int/lit8 v2, v8, 0x3

    if-eqz v2, :cond_0

    ushr-int/lit8 v8, p0, 0xc

    and-int/lit8 v1, v8, 0xf

    if-eqz v1, :cond_0

    const/16 v8, 0xf

    if-eq v1, v8, :cond_0

    ushr-int/lit8 v8, p0, 0xa

    and-int/lit8 v5, v8, 0x3

    if-eq v5, v9, :cond_0

    sget-object v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v7, v5

    if-ne v6, v12, :cond_3

    div-int/lit8 v4, v4, 0x2

    :cond_2
    :goto_1
    ushr-int/lit8 v7, p0, 0x9

    and-int/lit8 v3, v7, 0x1

    if-ne v2, v9, :cond_5

    if-ne v6, v9, :cond_4

    sget-object v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    :goto_2
    mul-int/lit16 v7, v0, 0x2ee0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_3
    if-nez v6, :cond_2

    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_4
    sget-object v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_2

    :cond_5
    if-ne v6, v9, :cond_7

    if-ne v2, v12, :cond_6

    sget-object v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    :goto_3
    if-ne v6, v9, :cond_8

    const v7, 0x23280

    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_0

    :cond_6
    sget-object v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_3

    :cond_7
    sget-object v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_3

    :cond_8
    if-ne v2, v11, :cond_9

    const v7, 0x11940

    :goto_4
    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_0

    :cond_9
    const v7, 0x23280

    goto :goto_4
.end method

.method public static populateHeader(ILorg/telegram/messenger/exoplayer/util/MpegAudioHeader;)Z
    .locals 13

    const/high16 v0, -0x20

    and-int/2addr v0, p0

    const/high16 v6, -0x20

    if-eq v0, v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    and-int/lit8 v1, v0, 0x3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v10, v0, 0x3

    if-nez v10, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v9, v0, 0xf

    if-eqz v9, :cond_3

    const/16 v0, 0xf

    if-ne v9, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v12, v0, 0x3

    const/4 v0, 0x3

    if-ne v12, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v0, v12

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    div-int/lit8 v4, v4, 0x2

    :cond_6
    :goto_1
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v11, v0, 0x1

    const/4 v0, 0x3

    if-ne v10, v0, :cond_9

    const/4 v0, 0x3

    if-ne v1, v0, :cond_8

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    :goto_2
    mul-int/lit16 v0, v8, 0x2ee0

    div-int/2addr v0, v4

    add-int/2addr v0, v11

    mul-int/lit8 v3, v0, 0x4

    const/16 v7, 0x180

    :goto_3
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v6, v10, 0x3

    aget-object v2, v0, v6

    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_e

    const/4 v5, 0x1

    :goto_4
    mul-int/lit16 v6, v8, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    if-nez v1, :cond_6

    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_2

    :cond_9
    const/4 v0, 0x3

    if-ne v1, v0, :cond_b

    const/4 v0, 0x2

    if-ne v10, v0, :cond_a

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    :goto_5
    const/16 v7, 0x480

    const v0, 0x23280

    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    goto :goto_3

    :cond_a
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_5

    :cond_b
    sget-object v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    const/4 v0, 0x1

    if-ne v10, v0, :cond_c

    const/16 v7, 0x240

    :goto_6
    const/4 v0, 0x1

    if-ne v10, v0, :cond_d

    const v0, 0x11940

    :goto_7
    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    goto :goto_3

    :cond_c
    const/16 v7, 0x480

    goto :goto_6

    :cond_d
    const v0, 0x23280

    goto :goto_7

    :cond_e
    const/4 v5, 0x2

    goto :goto_4
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->version:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->channels:I

    iput p6, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->bitrate:I

    iput p7, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    return-void
.end method
