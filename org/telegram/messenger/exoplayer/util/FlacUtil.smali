.class public final Lorg/telegram/messenger/exoplayer/util/FlacUtil;
.super Ljava/lang/Object;
.source "FlacUtil.java"


# static fields
.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractSampleTimestamp(Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 6

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUTF8EncodedLong()J

    move-result-wide v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->minBlockSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->maxBlockSize:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->minBlockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method
