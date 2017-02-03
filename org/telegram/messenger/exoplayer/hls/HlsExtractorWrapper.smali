.class public final Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
.super Ljava/lang/Object;
.source "HlsExtractorWrapper.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

.field private final extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

.field public final format:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field private prepared:Z

.field private sampleQueueFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldSpliceIn:Z

.field private spliceConfigured:Z

.field public final startTimeUs:J

.field private volatile tracksBuilt:Z

.field public final trigger:I


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer/chunk/Format;JLorg/telegram/messenger/exoplayer/extractor/Extractor;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    iput p7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    iput p8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final configureSpliceTo(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->configureSpliceTo(Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    goto :goto_0
.end method

.method public discardUntil(IJ)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->discardUntil(J)V

    return-void
.end method

.method public drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 0

    return-void
.end method

.method public endTracks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    return-void
.end method

.method public getAdjustedEndTimeUs()J
    .locals 6

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getLargestParsedTimestampUs()J
    .locals 6

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSample(ILorg/telegram/messenger/exoplayer/SampleHolder;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->getSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v0

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public hasSamples(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    return-void
.end method

.method public isPrepared()Z
    .locals 5

    const/4 v4, -0x1

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->hasFormat()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    if-eq v2, v4, :cond_3

    :cond_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithMaxVideoDimensions(II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    goto :goto_1
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

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

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

.method public seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
