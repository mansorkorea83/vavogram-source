.class public final Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iput p2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ge v6, v7, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v6, v7, :cond_1

    move v0, v4

    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v7, :cond_2

    :goto_2
    return v4

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public getPosition()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 10

    const/16 v9, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    div-int/lit8 v4, p1, 0x8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v8, v8, 0x8

    ushr-int/2addr v7, v8

    or-int v0, v6, v7

    :goto_2
    add-int/lit8 p1, p1, -0x8

    and-int/lit16 v6, v0, 0xff

    shl-int/2addr v6, p1

    or-int/2addr v3, v6

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v6, v7

    goto :goto_2

    :cond_2
    if-lez p1, :cond_4

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int v2, v6, p1

    const/16 v6, 0xff

    rsub-int/lit8 v7, p1, 0x8

    shr-int/2addr v6, v7

    int-to-byte v5, v6

    if-le v2, v9, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, -0x8

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x10

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    :cond_3
    :goto_3
    rem-int/lit8 v6, v2, 0x8

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    if-ne v2, v9, :cond_3

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->reset([BI)V

    return-void
.end method

.method public reset([BI)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBits(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method
