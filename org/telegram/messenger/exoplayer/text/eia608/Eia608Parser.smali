.class public final Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;
.super Ljava/lang/Object;
.source "Eia608Parser.java"


# static fields
.field private static final BASIC_CHARACTER_SET:[I = null

.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE:I = 0x31

.field private static final SPECIAL_CHARACTER_SET:[I = null

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I = null

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I = null

.field private static final USER_DATA_TYPE_CODE:I = 0x3

.field private static final USER_ID:I = 0x47413934


# instance fields
.field private final captions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;",
            ">;"
        }
    .end annotation
.end field

.field private final seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x20

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->BASIC_CHARACTER_SET:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->SPECIAL_CHARACTER_SET:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->SPECIAL_ES_FR_CHARACTER_SET:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->SPECIAL_PT_DE_CHARACTER_SET:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0xf7t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xa0t 0x25t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xaet 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xbdt 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x22t 0x21t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0x6at 0x26t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xc1t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x20t 0x21t 0x0t 0x0t
        0x22t 0x20t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x2t 0x25t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0xct 0x25t 0x0t 0x0t
        0x10t 0x25t 0x0t 0x0t
        0x14t 0x25t 0x0t 0x0t
        0x18t 0x25t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    return-void
.end method

.method private addBufferedText()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionText;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method private addCtrl(BB)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->addBufferedText()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    invoke-direct {v1, p1, p2}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;-><init>(BB)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private backspace()V
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->addCtrl(BB)V

    return-void
.end method

.method private static getChar(B)C
    .locals 2

    and-int/lit8 v1, p0, 0x7f

    add-int/lit8 v0, v1, -0x20

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->BASIC_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getSpecialChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0xf

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->SPECIAL_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method public static isSeiMessageEia608(IILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne p0, v6, :cond_0

    const/16 v6, 0x8

    if-ge p1, v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/16 v6, 0xb5

    if-ne v0, v6, :cond_0

    const/16 v6, 0x31

    if-ne v1, v6, :cond_0

    const v6, 0x47413934

    if-ne v4, v6, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/eia-608"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method parse(Lorg/telegram/messenger/exoplayer/SampleHolder;)Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;
    .locals 14

    const/16 v13, 0x12

    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/16 v9, 0x20

    iget v7, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v8, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->reset([B)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v8, 0x43

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_c

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v13}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v7

    int-to-byte v2, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->seiBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v7

    int-to-byte v3, v7

    if-nez v2, :cond_4

    if-eqz v3, :cond_1

    :cond_4
    const/16 v7, 0x11

    if-eq v2, v7, :cond_5

    const/16 v7, 0x19

    if-ne v2, v7, :cond_6

    :cond_5
    and-int/lit8 v7, v3, 0x70

    const/16 v8, 0x30

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->getSpecialChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-eq v2, v13, :cond_7

    const/16 v7, 0x1a

    if-ne v2, v7, :cond_8

    :cond_7
    and-int/lit8 v7, v3, 0x60

    if-ne v7, v9, :cond_8

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->backspace()V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->getExtendedEsFrChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v7, 0x13

    if-eq v2, v7, :cond_9

    const/16 v7, 0x1b

    if-ne v2, v7, :cond_a

    :cond_9
    and-int/lit8 v7, v3, 0x60

    if-ne v7, v9, :cond_a

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->backspace()V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->getExtendedPtDeChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    if-ge v2, v9, :cond_b

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->addCtrl(BB)V

    goto :goto_2

    :cond_b
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->getChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v3, v9, :cond_1

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->getChar(B)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_c
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->addBufferedText()V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->captions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isDecodeOnly()Z

    move-result v10

    invoke-direct {v7, v8, v9, v10, v0}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;-><init>(JZ[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;)V

    goto/16 :goto_0
.end method
