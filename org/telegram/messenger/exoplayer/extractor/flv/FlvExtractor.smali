.class public final Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# static fields
.field private static final FLV_HEADER_SIZE:I = 0x9

#the value of this static final field might be set in the static constructor
.field private static final FLV_TAG:I = 0x0

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

.field private parserState:I

.field private final scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field public tagDataSize:I

.field private final tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field public tagTimestampUs:J

.field public tagType:I

.field private videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "FLV"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->FLV_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    return-void
.end method

.method private prepareTagData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v3, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0
.end method

.method private readFlvHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v7, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v7, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    move v1, v4

    :goto_1
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_5

    move v2, v4

    :goto_2
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-nez v3, :cond_1

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-nez v3, :cond_2

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v5, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    if-nez v3, :cond_3

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v3, p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 v3, 0x2

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    move v3, v4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private readTagData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V

    :cond_0
    :goto_0
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    return v0

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->setDurationUs(J)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->setDurationUs(J)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readTagHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v3, 0xb

    invoke-interface {p1, v2, v0, v3, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    move v0, v1

    goto :goto_0
.end method

.method private skipToTagHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, -0x1

    :cond_0
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->readFlvHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->skipToTagHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->readTagHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->readTagData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x3

    invoke-interface {p1, v2, v1, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->FLV_TAG:I

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x2

    invoke-interface {p1, v2, v1, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    and-int/lit16 v2, v2, 0xfa

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/FlvExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
