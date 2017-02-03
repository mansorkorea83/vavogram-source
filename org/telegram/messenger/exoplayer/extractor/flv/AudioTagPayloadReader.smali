.class final Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7ct 0x15t 0x0t 0x0t
        0xf8t 0x2at 0x0t 0x0t
        0xf0t 0x55t 0x0t 0x0t
        0xe0t 0xabt 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    return-void
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v0, v3, 0xf

    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v2, v3, 0x3

    if-ltz v2, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    :cond_0
    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid sample rate index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio format not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    :goto_0
    return v4

    :cond_3
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 14

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    if-nez v13, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    new-array v11, v0, [B

    const/4 v0, 0x0

    array-length v1, v11

    invoke-virtual {p1, v11, v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v10

    const/4 v0, 0x0

    const-string/jumbo v1, "audio/mp4a-latm"

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    iget-object v6, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, v12}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v13, v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v2, p2

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0
.end method

.method public seek()V
    .locals 0

    return-void
.end method
