.class final Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
    }
.end annotation


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method

.method private parseAvcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v9, v0, 0x1f

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v0, v12

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f80

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-lez v9, :cond_3

    new-instance v11, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v10

    iget v3, v10, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->width:I

    iget v4, v10, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->height:I

    iget v5, v10, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    :cond_3
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;-><init>(Ljava/util/List;IIIF)V

    return-object v0
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v0, v3, 0xf

    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Video format not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v15

    int-to-long v2, v15

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long p2, p2, v2

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v2, :cond_1

    new-instance v20, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->parseAvcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;

    move-result-object v13

    iget v2, v13, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v2, 0x0

    const-string/jumbo v3, "video/avc"

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->getDurationUs()J

    move-result-wide v6

    iget v8, v13, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->width:I

    iget v9, v13, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->height:I

    iget-object v10, v13, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->initializationData:Ljava/util/List;

    const/4 v11, -0x1

    iget v12, v13, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->pixelWidthAspectRatio:F

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v17, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v17, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v17, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v18, v2, 0x4

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v14}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    add-int/2addr v7, v14

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public seek()V
    .locals 0

    return-void
.end method
