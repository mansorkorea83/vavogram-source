.class public final Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# static fields
.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field private wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v3, "Error initializing WavHeader. Did you sniff first?"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;->skipToData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string/jumbo v3, "audio/raw"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getBitrate()I

    move-result v4

    const v5, 0x8000

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getDurationUs()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getNumChannels()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getEncoding()I

    move-result v12

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const v3, 0x8000

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v13

    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v7, v2, v3

    if-lez v7, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v4, v4

    sub-long v14, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v2, v14, v15}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    :cond_4
    const/4 v2, -0x1

    if-ne v13, v2, :cond_5

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
