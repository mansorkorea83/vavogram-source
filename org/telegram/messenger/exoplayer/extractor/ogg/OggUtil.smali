.class final Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;
.super Ljava/lang/Object;
.source "OggUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;,
        Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
    }
.end annotation


# static fields
.field public static final PAGE_HEADER_SIZE:I = 0x1b

.field private static final TYPE_OGGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "OggS"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->TYPE_OGGS:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePacketSize(Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;ILorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;)V
    .locals 4

    const/4 v1, 0x0

    iput v1, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    iput v1, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    :cond_0
    iget v1, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->laces:[I

    iget v2, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    iget v1, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    add-int/2addr v1, v0

    iput v1, p2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public static populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->reset()V

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1b

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v5, 0x1b

    invoke-interface {p0, v4, v2, v5, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    if-eqz p3, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->TYPE_OGGS:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    if-nez p3, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v3, "expected OggS capture pattern at begin of page"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->revision:I

    iget v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->revision:I

    if-eqz v4, :cond_7

    if-nez p3, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v3, "unsupported bit stream revision"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->streamSerialNumber:J

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSequenceNumber:J

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageChecksum:J

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    iget v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    add-int/lit8 v4, v4, 0x1b

    iput v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v5, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    invoke-interface {p0, v4, v2, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/4 v1, 0x0

    :goto_2
    iget v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_8

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->laces:[I

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    aput v4, v2, v1

    iget v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->laces:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    iput v2, p1, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_1
.end method

.method public static readBits(BII)I
    .locals 3

    shr-int v0, p0, p2

    const/16 v1, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public static skipToNextPage(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v9, 0x67

    const/4 v8, 0x0

    const/16 v3, 0x800

    new-array v0, v3, [B

    array-length v2, v0

    :goto_0
    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_0
    invoke-interface {p0, v0, v8, v2, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v3, v2, -0x3

    if-ge v1, v3, :cond_2

    aget-byte v3, v0, v1

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_1

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_1

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_1

    invoke-interface {p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, -0x3

    invoke-interface {p0, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method
