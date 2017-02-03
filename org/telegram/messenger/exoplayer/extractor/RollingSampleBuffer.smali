.class final Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;
.super Ljava/lang/Object;
.source "RollingSampleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;,
        Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

.field private final dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private final extrasHolder:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

.field private final infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

.field private lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

.field private lastAllocationOffset:I

.field private final scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private totalBytesDropped:J

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;-><init>(Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    return-void
.end method

.method private dropDownstreamTo(J)V
    .locals 9

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    div-int v0, v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->release(Lorg/telegram/messenger/exoplayer/upstream/Allocation;)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dropUpstreamFrom(J)V
    .locals 9

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v6, p1, v6

    long-to-int v4, v6

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    div-int v1, v4, v5

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    rem-int v2, v4, v5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v0, v5, -0x1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    invoke-interface {v6, v5}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->release(Lorg/telegram/messenger/exoplayer/upstream/Allocation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    :cond_2
    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    return-void
.end method

.method private static ensureCapacity(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    :cond_0
    return-void
.end method

.method private prepareForAppend(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->allocate()Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 7

    move v2, p4

    :goto_0
    if-lez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v1, v4

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->data:[B

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-virtual {p3, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v4, v3

    add-long/2addr p1, v4

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readData(J[BI)V
    .locals 7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    sub-int v4, p4, v1

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->data:[B

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-static {v4, v5, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v3

    add-long/2addr p1, v4

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer/SampleHolder;Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V
    .locals 20

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    const-wide/16 v6, 0x1

    add-long/2addr v12, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    aget-byte v14, v2, v6

    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_5

    const/16 v16, 0x1

    :goto_0
    and-int/lit8 v11, v14, 0x7f

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    const/16 v6, 0x10

    new-array v6, v6, [B

    iput-object v6, v2, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v11}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    int-to-long v6, v11

    add-long/2addr v12, v6

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    const-wide/16 v6, 0x2

    add-long/2addr v12, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v4, :cond_1

    array-length v2, v4

    if-ge v2, v3, :cond_2

    :cond_1
    new-array v4, v3, [I

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    iget-object v5, v2, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v5, :cond_3

    array-length v2, v5

    if-ge v2, v3, :cond_4

    :cond_3
    new-array v5, v3, [I

    :cond_4
    if-eqz v16, :cond_7

    mul-int/lit8 v15, v3, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2, v15}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->ensureCapacity(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v15}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readData(J[BI)V

    int-to-long v6, v15

    add-long/2addr v12, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    aput v2, v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    aput v2, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v4, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    long-to-int v7, v0

    sub-int/2addr v6, v7

    aput v6, v5, v2

    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->encryptionKeyId:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/CryptoInfo;->set(I[I[I[B[BI)V

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    sub-long v6, v12, v6

    long-to-int v9, v6

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    move-object/from16 v0, p2

    iput-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    sub-int/2addr v2, v9

    move-object/from16 v0, p1

    iput v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    return-void
.end method


# virtual methods
.method public appendData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->prepareForAppend(I)I

    move-result p2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v3

    invoke-interface {p1, v2, v3, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    goto :goto_0
.end method

.method public appendData(Lorg/telegram/messenger/exoplayer/upstream/DataSource;IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->prepareForAppend(I)I

    move-result p2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v3

    invoke-interface {p1, v2, v3, p2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    goto :goto_0
.end method

.method public appendData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 6

    :goto_0
    if-lez p2, :cond_0

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->prepareForAppend(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->data:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/Allocation;->translateOffset(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->clear()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->release([Lorg/telegram/messenger/exoplayer/upstream/Allocation;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesDropped:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocation:Lorg/telegram/messenger/exoplayer/upstream/Allocation;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->allocationLength:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->lastAllocationOffset:I

    return-void
.end method

.method public commitSample(JIJI[B)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->commitSample(JIJI[B)V

    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dropUpstreamFrom(J)V

    return-void
.end method

.method public getReadIndex()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getWriteIndex()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public getWritePosition()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->totalBytesWritten:J

    return-wide v0
.end method

.method public peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    return v0
.end method

.method public readSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z
    .locals 7

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v1, p1, v4}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readEncryptionData(Lorg/telegram/messenger/exoplayer/SampleHolder;Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V

    :cond_1
    iget v1, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer/SampleHolder;->ensureSpaceForWrite(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->extrasHolder:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v6, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    invoke-direct {p0, v4, v5, v1, v6}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->readData(JLjava/nio/ByteBuffer;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->moveToNextSample()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public skipSample()V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->moveToNextSample()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->infoQueue:Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->skipToKeyframeBefore(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;->dropDownstreamTo(J)V

    const/4 v2, 0x1

    goto :goto_0
.end method
