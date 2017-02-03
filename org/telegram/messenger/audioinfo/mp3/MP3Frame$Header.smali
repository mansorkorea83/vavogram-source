.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;
.super Ljava/lang/Object;
.source "MP3Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# static fields
.field private static final BITRATES:[[I = null

.field private static final BITRATES_COLUMN:[[I = null

.field private static final FREQUENCIES:[[I = null

.field private static final MPEG_BITRATE_FREE:I = 0x0

.field private static final MPEG_BITRATE_RESERVED:I = 0xf

.field public static final MPEG_CHANNEL_MODE_MONO:I = 0x3

.field private static final MPEG_FRQUENCY_RESERVED:I = 0x3

.field public static final MPEG_LAYER_1:I = 0x3

.field public static final MPEG_LAYER_2:I = 0x2

.field public static final MPEG_LAYER_3:I = 0x1

.field private static final MPEG_LAYER_RESERVED:I = 0x0

.field public static final MPEG_PROTECTION_CRC:I = 0x0

.field public static final MPEG_VERSION_1:I = 0x3

.field public static final MPEG_VERSION_2:I = 0x2

.field public static final MPEG_VERSION_2_5:I = 0x0

.field private static final MPEG_VERSION_RESERVED:I = 0x1

.field private static final SIDE_INFO_SIZES:[[I

.field private static final SIZE_COEFFICIENTS:[[I

.field private static final SLOT_SIZES:[I


# instance fields
.field private final bitrate:I

.field private final channelMode:I

.field private final frequency:I

.field private final layer:I

.field private final padding:I

.field private final protection:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->FREQUENCIES:[[I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES:[[I

    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES_COLUMN:[[I

    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIZE_COEFFICIENTS:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SLOT_SIZES:[I

    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIDE_INFO_SIZES:[[I

    return-void

    :array_0
    .array-data 0x4
        0x11t 0x2bt 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x22t 0x56t 0x0t 0x0t
        0x44t 0xact 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xe0t 0x2et 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x40t 0x1ft 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x80t 0x3et 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0xfat 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x40t 0x9ct 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x77t 0x1t 0x0t
        0xc0t 0xdat 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0xc0t 0xdat 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0xf4t 0x1t 0x0t
        0x0t 0xfat 0x0t 0x0t
        0xc0t 0xdat 0x0t 0x0t
        0x0t 0xfat 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x71t 0x2t 0x0t
        0x80t 0x38t 0x1t 0x0t
        0x0t 0xfat 0x0t 0x0t
        0x80t 0x38t 0x1t 0x0t
        0x40t 0x9ct 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0xeet 0x2t 0x0t
        0x0t 0x77t 0x1t 0x0t
        0x80t 0x38t 0x1t 0x0t
        0x0t 0x77t 0x1t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x6bt 0x3t 0x0t
        0x80t 0xb5t 0x1t 0x0t
        0x0t 0x77t 0x1t 0x0t
        0x80t 0xb5t 0x1t 0x0t
        0xc0t 0xdat 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x0t 0xe8t 0x3t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x80t 0xb5t 0x1t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x0t 0xfat 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x65t 0x4t 0x0t
        0x0t 0x71t 0x2t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x80t 0x32t 0x2t 0x0t
        0x80t 0x38t 0x1t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xeet 0x2t 0x0t
        0x0t 0x71t 0x2t 0x0t
        0x0t 0x71t 0x2t 0x0t
        0x0t 0x77t 0x1t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x0t 0x5ft 0x5t 0x0t
        0x0t 0x6bt 0x3t 0x0t
        0x0t 0xeet 0x2t 0x0t
        0x80t 0xaft 0x2t 0x0t
        0x80t 0xb5t 0x1t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x0t 0x6bt 0x3t 0x0t
        0x0t 0xeet 0x2t 0x0t
        0x0t 0xf4t 0x1t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x0t 0x59t 0x6t 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x0t 0x6bt 0x3t 0x0t
        0x80t 0x32t 0x2t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x0t 0xd6t 0x6t 0x0t
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x0t 0x71t 0x2t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_14
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_16
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x48t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1a
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x48t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x90t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x11t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x11t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x11t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x9t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    if-ne v1, v3, :cond_0

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v2, "Reserved version"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    if-nez v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v2, "Reserved layer"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->bitrate:I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->bitrate:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v2, "Reserved bitrate"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->bitrate:I

    if-nez v1, :cond_3

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v2, "Free bitrate"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    shr-int/lit8 v1, p2, 0x2

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v2, "Reserved frequency"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    shr-int/lit8 v1, p3, 0x6

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    shr-int/lit8 v1, p2, 0x1

    and-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->padding:I

    and-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->protection:I

    const/4 v0, 0x4

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->protection:I

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x2

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSideInfoSize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v1

    if-ge v1, v0, :cond_7

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Frame size must be at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->bitrate:I

    aget-object v0, v0, v1

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES_COLUMN:[[I

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    aget v1, v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    return v0
.end method

.method public getDuration()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getFrameSize()I
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIZE_COEFFICIENTS:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    aget v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrequency()I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->padding:I

    add-int/2addr v0, v1

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SLOT_SIZES:[I

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    aget v1, v1, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method public getFrequency()I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->FREQUENCIES:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget v0, v0, v1

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    return v0
.end method

.method public getProtection()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->protection:I

    return v0
.end method

.method public getSampleCount()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x180

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x480

    goto :goto_0
.end method

.method public getSideInfoSize()I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIDE_INFO_SIZES:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget v0, v0, v1

    return v0
.end method

.method public getTotalDuration(J)J
    .locals 7

    const/4 v6, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSampleCount()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrequency()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    div-long v0, v2, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getVersion()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getChannelMode()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getVBRIOffset()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    return v0
.end method

.method public getXingOffset()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSideInfoSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
