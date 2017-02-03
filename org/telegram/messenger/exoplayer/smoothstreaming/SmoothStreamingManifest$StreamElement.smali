.class public Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamElement"
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1

.field private static final URL_PLACEHOLDER_BITRATE:Ljava/lang/String; = "{bitrate}"

.field private static final URL_PLACEHOLDER_START_TIME:Ljava/lang/String; = "{start time}"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field public final chunkCount:I

.field private final chunkStartTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkStartTimesUs:[J

.field private final chunkTemplate:Ljava/lang/String;

.field public final displayHeight:I

.field public final displayWidth:I

.field public final language:Ljava/lang/String;

.field private final lastChunkDurationUs:J

.field public final maxHeight:I

.field public final maxWidth:I

.field public final name:Ljava/lang/String;

.field public final qualityLevels:I

.field public final subType:Ljava/lang/String;

.field public final timescale:J

.field public final tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIIILjava/lang/String;[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;Ljava/util/List;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "[",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->baseUri:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkTemplate:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->subType:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->timescale:J

    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->name:Ljava/lang/String;

    move/from16 v0, p8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->qualityLevels:I

    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->maxWidth:I

    move/from16 v0, p10

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->maxHeight:I

    move/from16 v0, p11

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->displayWidth:I

    move/from16 v0, p12

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->displayHeight:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->language:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p16

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->lastChunkDurationUs:J

    const-wide/32 v2, 0xf4240

    move-object/from16 v0, p15

    invoke-static {v0, v2, v3, p5, p6}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamps(Ljava/util/List;JJ)[J

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    return-void
.end method


# virtual methods
.method public buildRequestUri(II)Landroid/net/Uri;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkTemplate:Ljava/lang/String;

    const-string/jumbo v2, "{bitrate}"

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{start time}"

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->baseUri:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public getChunkDurationUs(I)J
    .locals 4

    iget v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->lastChunkDurationUs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getChunkIndex(J)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    return v0
.end method

.method public getStartTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkStartTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
