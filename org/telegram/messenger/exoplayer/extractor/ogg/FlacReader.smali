.class final Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;
.source "FlacReader.java"


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final SEEKTABLE_PACKET_TYPE:B = 0x3t


# instance fields
.field private firstAudioPacketProcessed:Z

.field private seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

.field private streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v12, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    if-nez v2, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    const/16 v3, 0x11

    invoke-direct {v2, v12, v3}, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;-><init>([BI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    const/4 v2, 0x4

    const/16 v3, -0x80

    aput-byte v3, v14, v2

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const-string/jumbo v3, "audio/x-flac"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->bitRate()I

    move-result v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->durationUs()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget v8, v8, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->channels:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget v9, v9, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->sampleRate:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v2, v13}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->firstAudioPacketProcessed:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->sampleRate:I

    int-to-long v6, v6

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v6, v7}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->createSeekMap(JJ)Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->firstAudioPacketProcessed:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    invoke-interface {v2, v3, v6}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/FlacUtil;->extractSampleTimestamp(Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v3, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->parseSeekTable(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    goto/16 :goto_1
.end method
