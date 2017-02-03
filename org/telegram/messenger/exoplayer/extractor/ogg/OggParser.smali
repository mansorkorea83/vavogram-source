.class final Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;
.super Ljava/lang/Object;
.source "OggParser.java"


# static fields
.field public static final OGG_MAX_SEGMENT_SIZE:I = 0xff


# instance fields
.field private currentSegmentIndex:I

.field private elapsedSamples:J

.field private final headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

.field private final pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    return-void
.end method


# virtual methods
.method public getPageHeader()Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    return-object v0
.end method

.method public readGranuleOfLastPage(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->skipToNextPage(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->reset()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    return-wide v0
.end method

.method public readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    if-gez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v3, v6, v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    return v5

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v0, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    invoke-static {v3, v2, v6}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->calculatePacketSize(Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;ILorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    add-int/2addr v0, v3

    :cond_2
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->calculatePacketSize(Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;ILorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->segmentCount:I

    add-int v2, v3, v6

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    if-lez v3, :cond_4

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    invoke-interface {p1, v3, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->holder:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PacketInfoHolder;->size:I

    add-int/2addr v3, v6

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->laces:[I

    add-int/lit8 v6, v2, -0x1

    aget v3, v3, v6

    const/16 v6, 0xff

    if-eq v3, v6, :cond_6

    move v1, v4

    :cond_4
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    if-ne v2, v3, :cond_5

    const/4 v2, -0x1

    :cond_5
    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    goto/16 :goto_1

    :cond_6
    move v1, v5

    goto :goto_3

    :cond_7
    move v5, v4

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    return-void
.end method

.method public skipToPageOfGranule(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->skipToNextPage(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    add-int/2addr v2, v3

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>()V

    throw v2

    :cond_1
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->elapsedSamples:J

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->currentSegmentIndex:I

    return-wide v0
.end method
