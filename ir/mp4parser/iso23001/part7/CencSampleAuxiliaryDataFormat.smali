.class public Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
.super Ljava/lang/Object;
.source "CencSampleAuxiliaryDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$AbstractPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteBytePair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteLongPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteShortPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntIntPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntShortPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortIntPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortLongPair;,
        Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortShortPair;
    }
.end annotation


# instance fields
.field public iv:[B

.field public pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    return-void
.end method


# virtual methods
.method public createPair(IJ)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;
    .locals 8

    const-wide/32 v6, 0x7fffffff

    const-wide/16 v4, 0x7fff

    const-wide/16 v2, 0x7f

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteBytePair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteBytePair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    :goto_0
    return-object v0

    :cond_0
    cmp-long v0, p2, v4

    if-gtz v0, :cond_1

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteShortPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteShortPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_1
    cmp-long v0, p2, v6

    if-gtz v0, :cond_2

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteLongPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteLongPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_7

    cmp-long v0, p2, v2

    if-gtz v0, :cond_4

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_4
    cmp-long v0, p2, v4

    if-gtz v0, :cond_5

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortShortPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortShortPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_5
    cmp-long v0, p2, v6

    if-gtz v0, :cond_6

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortIntPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortIntPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortLongPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortLongPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_7
    cmp-long v0, p2, v2

    if-gtz v0, :cond_8

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_8
    cmp-long v0, p2, v4

    if-gtz v0, :cond_9

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntShortPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntShortPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_9
    cmp-long v0, p2, v6

    if-gtz v0, :cond_a

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntIntPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntIntPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;-><init>(Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    iget-object v4, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getSize()I
    .locals 2

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    array-length v0, v1

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    array-length v1, v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Entry{iv="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
