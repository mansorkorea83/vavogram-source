.class public abstract Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndex:I

.field public final isMediaFormatFinal:Z

.field private output:Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIZI)V
    .locals 15

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJII)V

    move/from16 v0, p10

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;->isMediaFormatFinal:Z

    return-void
.end method


# virtual methods
.method public abstract getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
.end method

.method public final getFirstSampleIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;->firstSampleIndex:I

    return v0
.end method

.method public abstract getMediaFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;
.end method

.method protected final getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;->output:Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;->output:Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;->firstSampleIndex:I

    return-void
.end method
