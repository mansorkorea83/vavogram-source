.class public final Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iput p2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return-void
.end method

.method public readBytes(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return-void
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xa

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    :goto_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-eq v2, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    sub-int v2, v1, v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    const/16 v3, -0x11

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, -0x45

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, -0x41

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    sub-int v4, v1, v4

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    if-ne v2, v6, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    if-eq v2, v3, :cond_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    goto :goto_0
.end method

.method public readLittleEndianInt()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianInt24()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianLong()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianShort()S
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readLittleEndianUnsignedInt()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianUnsignedInt24()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public readLittleEndianUnsignedShort()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readNullTerminatedString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    sub-int v0, v2, v3

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    goto :goto_0
.end method

.method public readShort()S
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public readSynchSafeInt()I
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v4, v0, 0x15

    shl-int/lit8 v5, v1, 0xe

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x7

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public readUTF8EncodedLong()J
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v6, v6, v7

    int-to-long v4, v6

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    shl-int v6, v10, v1

    int-to-long v6, v6

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    if-ge v1, v11, :cond_1

    shl-int v6, v10, v1

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    and-long/2addr v4, v6

    rsub-int/lit8 v2, v1, 0x7

    :cond_0
    :goto_1
    if-nez v2, :cond_3

    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v6, 0x7

    if-ne v1, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-ge v0, v2, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/2addr v7, v0

    aget-byte v3, v6, v7

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-eq v6, v7, :cond_4

    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    shl-long v6, v4, v11

    and-int/lit8 v8, v3, 0x3f

    int-to-long v8, v8

    or-long v4, v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return-wide v4
.end method

.method public readUnsignedByte()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .locals 5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return v0
.end method

.method public readUnsignedInt()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public readUnsignedLongToLong()J
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public reset([BI)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iput p2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return-void
.end method

.method public setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipBytes(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method
