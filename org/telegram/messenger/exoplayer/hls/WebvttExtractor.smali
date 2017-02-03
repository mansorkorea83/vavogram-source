.class final Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private sampleData:[B

.field private final sampleDataWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private sampleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    return-void
.end method

.method private buildTrackOutput(J)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v8

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "text/vtt"

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-string/jumbo v5, "en"

    move-wide v6, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    return-object v8
.end method

.method private processSample()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    new-instance v17, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    sget-object v8, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v22

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->ptsToUs(J)J

    move-result-wide v20

    goto :goto_0

    :cond_3
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;->findNextCueHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v4

    if-nez v4, :cond_4

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    :goto_1
    return-void

    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    add-long v10, v12, v20

    sub-long v10, v10, v22

    invoke-static {v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->usToPts(J)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v6

    sub-long v18, v6, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_1
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, -0x1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v4, v4

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    if-eq v1, v3, :cond_2

    move v2, v1

    :goto_0
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v4, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v5, v5

    iget v6, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    sub-int/2addr v5, v6

    invoke-interface {p1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    if-eq v0, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    if-eq v1, v3, :cond_1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleSize:I

    if-eq v2, v1, :cond_3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/WebvttExtractor;->processSample()V

    move v2, v3

    goto :goto_1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
