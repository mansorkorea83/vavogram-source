.class final Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D = null

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3


# instance fields
.field private final csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

.field private foundFirstFrameInGroup:Z

.field private frameDurationUs:J

.field private framePosition:J

.field private frameTimeUs:J

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private pesPtsUsAvailable:Z

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private totalBytesWritten:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 0x8
        0x87t 0x22t 0x11t 0xb5t 0xdct 0xf9t 0x37t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x38t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x39t 0x40t
        0x28t 0x6bt 0x55t 0xe2t 0x53t 0xf8t 0x3dt 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x3et 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x49t 0x40t
        0x28t 0x6bt 0x55t 0xe2t 0x53t 0xf8t 0x4dt 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4et 0x40t
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    return-void
.end method

.method private static parseCsdBuffer(Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    const/4 v2, 0x4

    aget-byte v2, v14, v2

    and-int/lit16 v15, v2, 0xff

    const/4 v2, 0x5

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v24, v0

    const/4 v2, 0x6

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v26, v0

    shl-int/lit8 v2, v15, 0x4

    shr-int/lit8 v3, v24, 0x4

    or-int v8, v2, v3

    and-int/lit8 v2, v24, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int v9, v2, v26

    const/high16 v12, 0x3f80

    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v13, v2, 0x4

    packed-switch v13, :pswitch_data_0

    :goto_0
    const/4 v2, 0x0

    const-string/jumbo v3, "video/mpeg2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v16

    const-wide/16 v18, 0x0

    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v17, v2, -0x1

    if-ltz v17, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v20, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    move/from16 v25, v0

    add-int/lit8 v2, v25, 0x9

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x60

    shr-int/lit8 v23, v2, 0x5

    add-int/lit8 v2, v25, 0x9

    aget-byte v2, v14, v2

    and-int/lit8 v22, v2, 0x1f

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    move/from16 v0, v23

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v2, v4

    add-int/lit8 v4, v22, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v20, v20, v2

    :cond_0
    const-wide v2, 0x412e848000000000L

    div-double v2, v2, v20

    double-to-long v0, v2

    move-wide/from16 v18, v0

    :cond_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    :pswitch_0
    mul-int/lit8 v2, v9, 0x4

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x3

    int-to-float v3, v3

    div-float v12, v2, v3

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v2, v9, 0x10

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x9

    int-to-float v3, v3

    div-float v12, v2, v3

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v2, v9, 0x79

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x64

    int-to-float v3, v3

    div-float v12, v2, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v12

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    move v15, v13

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v10, v15, v12, v3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v3, v10, v13, v12}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v16, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_3

    sub-int v11, v16, v13

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v16

    invoke-virtual {v3, v10, v13, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_2
    if-gez v11, :cond_7

    neg-int v2, v11

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->parseCsdBuffer(Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->frameDurationUs:J

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xb8

    move/from16 v0, v17

    if-eq v0, v3, :cond_4

    if-nez v17, :cond_6

    :cond_4
    sub-int v8, v12, v16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    if-eqz v3, :cond_8

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->framePosition:J

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    long-to-int v3, v4

    sub-int v7, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    :cond_5
    const/16 v3, 0xb8

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    :cond_6
    :goto_3
    move/from16 v13, v16

    add-int/lit8 v15, v13, 0x3

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesTimeUs:J

    :goto_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->framePosition:J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->frameDurationUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_4
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesTimeUs:J

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader$CsdBuffer;->reset()V

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    return-void
.end method
