.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public auxiliaryDataPosition:J

.field public dataPosition:J

.field public definesEncryptionData:Z

.field public header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

.field public length:I

.field public nextFragmentDecodeTime:J

.field public sampleCompositionTimeOffsetTable:[I

.field public sampleDecodingTimeTable:[J

.field public sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field public sampleEncryptionDataLength:I

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public sampleSizeTable:[I

.field public trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    invoke-interface {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public fillEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public getSamplePresentationTime(I)J
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public initEncryptionData(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public initTables(I)V
    .locals 3

    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length v1, v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ge v1, v2, :cond_1

    :cond_0
    mul-int/lit8 v1, p1, 0x7d

    div-int/lit8 v0, v1, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    return-void
.end method
