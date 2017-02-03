.class final Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->durationUs:J

    return-void
.end method

.method public static create(Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;
    .locals 22

    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    if-gtz v15, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v17, v0

    int-to-long v4, v15

    const-wide/32 v8, 0xf4240

    const/16 v6, 0x7d00

    move/from16 v0, v17

    if-lt v0, v6, :cond_1

    const/16 v6, 0x480

    :goto_1
    int-to-long v6, v6

    mul-long/2addr v6, v8

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v4, v4

    add-long p2, p2, v4

    add-int/lit8 v4, v12, 0x1

    new-array v0, v4, [J

    move-object/from16 v20, v0

    add-int/lit8 v4, v12, 0x1

    new-array v0, v4, [J

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v20, v4

    const/4 v4, 0x0

    aput-wide p2, v16, v4

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v14, v4, :cond_3

    packed-switch v13, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v6, 0x240

    goto :goto_1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    :goto_3
    mul-int v4, v19, v18

    int-to-long v4, v4

    add-long p2, p2, v4

    int-to-long v4, v14

    mul-long/2addr v4, v10

    int-to-long v6, v12

    div-long/2addr v4, v6

    aput-wide v4, v20, v14

    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_2

    move-wide/from16 v4, p2

    :goto_4
    aput-wide v4, v16, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v19

    goto :goto_3

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    goto :goto_3

    :cond_2
    move-wide/from16 v0, p4

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_4

    :cond_3
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;-><init>([J[JJ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->positions:[J

    invoke-static {v1, p1, p2, v2, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
