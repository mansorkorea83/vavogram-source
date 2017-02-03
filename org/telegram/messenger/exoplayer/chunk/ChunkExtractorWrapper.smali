.class public Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;
    }
.end annotation


# instance fields
.field private final extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

.field private extractorInitialized:Z

.field private output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

.field private seenTrack:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V

    return-void
.end method

.method public endTracks()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    return-void
.end method

.method public init(Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->seek()V

    goto :goto_0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleMetadata(JIII[B)V

    return-void
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
