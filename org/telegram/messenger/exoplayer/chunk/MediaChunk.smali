.class public abstract Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:I

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJI)V
    .locals 13

    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJII)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJII)V
    .locals 11

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I)V

    invoke-static {p4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v0, p5

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->startTimeUs:J

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->endTimeUs:J

    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->chunkIndex:I

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->endTimeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNextChunkIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
