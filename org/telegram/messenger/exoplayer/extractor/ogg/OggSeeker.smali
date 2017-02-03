.class final Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# static fields
.field private static final MATCH_RANGE:I = 0x11940


# instance fields
.field private audioDataLength:J

.field private final headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

.field private totalSamples:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    return-void
.end method


# virtual methods
.method public getNextSeekPosition(JLorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->totalSamples:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->headerArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-static {p3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    sub-long v0, p1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const-wide/32 v4, 0x11940

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    add-int/2addr v5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    const/4 v4, 0x2

    :goto_1
    mul-int/2addr v4, v5

    int-to-long v2, v4

    invoke-interface {p3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    mul-long/2addr v6, v0

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->totalSamples:J

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    :goto_2
    return-wide v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    const-wide/16 v4, -0x1

    goto :goto_2
.end method

.method public setup(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->audioDataLength:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggSeeker;->totalSamples:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
