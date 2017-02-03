.class public final Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/SampleSource;
.implements Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L

.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final bufferSizeContribution:I

.field private final chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

.field private final chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

.field private chunkSourceTrackIndices:[I

.field private currentLoadStartTimeMs:J

.field private currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

.field private downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field private downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private downstreamPositionUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

.field private final eventSourceId:I

.field private extractorTrackEnabledStates:[Z

.field private extractorTrackIndices:[I

.field private final extractors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

.field private loadControlRegistered:Z

.field private loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

.field private remainingReleaseCount:I

.field private trackCount:I

.field private trackEnabledStates:[Z

.field private trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;I)V
    .locals 8

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer/LoadControl;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    iput p7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    iput p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    return-object v0
.end method

.method private buildTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V
    .locals 20

    const/4 v14, 0x0

    const/4 v13, -0x1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v17, 0x3

    :goto_1
    move/from16 v0, v17

    if-le v0, v14, :cond_4

    move/from16 v14, v17

    move v13, v9

    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v17, 0x2

    goto :goto_1

    :cond_2
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    :cond_4
    move/from16 v0, v17

    if-ne v0, v14, :cond_0

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_0

    const/4 v13, -0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getTrackCount()I

    move-result v2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_8

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    new-array v0, v6, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getDurationUs()J

    move-result-wide v4

    const/4 v15, 0x0

    const/4 v9, 0x0

    move/from16 v16, v15

    :goto_4
    if-ge v9, v6, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithDurationUs(J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v8

    const/4 v11, 0x0

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getMuxedAudioLanguage()Ljava/lang/String;

    move-result-object v11

    :cond_7
    :goto_5
    if-ne v9, v13, :cond_c

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v18, v0

    aput v9, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v18, v0

    aput v10, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getFixedTrackVariant(I)Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v19, v0

    add-int/lit8 v15, v16, 0x1

    if-nez v7, :cond_a

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    :goto_7
    aput-object v18, v19, v16

    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v15

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v18, "application/eia-608"

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getMuxedCaptionLanguage()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_a
    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v8, v0, v11}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->copyWithFixedTrackInfo(Lorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    goto :goto_7

    :cond_b
    move/from16 v15, v16

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    move-object/from16 v18, v0

    aput v9, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    move-object/from16 v18, v0

    const/16 v19, -0x1

    aput v19, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v18, v0

    add-int/lit8 v15, v16, 0x1

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v19

    aput-object v19, v18, v16

    goto :goto_8

    :cond_d
    return-void
.end method

.method private clearCurrentLoadable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    return-void
.end method

.method private clearState()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    return-void
.end method

.method private static copyWithFixedTrackInfo(Lorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 6

    const/4 v0, -0x1

    iget v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    if-ne v1, v0, :cond_0

    move v3, v0

    :goto_0
    iget v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-ne v1, v0, :cond_1

    move v4, v0

    :goto_1
    if-nez p2, :cond_2

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->language:Ljava/lang/String;

    :goto_2
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithFixedTrackInfo(Ljava/lang/String;IIILjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_0
    iget v3, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    goto :goto_0

    :cond_1
    iget v4, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    goto :goto_1

    :cond_2
    move-object v5, p2

    goto :goto_2
.end method

.method private discardSamplesForDisabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;J)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->discardUntil(IJ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurrentExtractor()Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->haveSamplesForEnabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->clear()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getNextLoadPositionUs()J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_2

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveSamplesForEnabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTsChunk(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    return v0
.end method

.method private maybeStartLoading()V
    .locals 31

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getNextLoadPositionUs()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v4, :cond_2

    const/16 v25, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v25, :cond_3

    :cond_0
    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v10}, Lorg/telegram/messenger/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    move-result v27

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v22, v28, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v4

    cmp-long v4, v22, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 v25, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz v4, :cond_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v12, -0x8000

    cmp-long v4, v4, v12

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v6, v7, v4, v5, v12}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getChunkOperation(Lorg/telegram/messenger/exoplayer/hls/TsChunk;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    iget-boolean v11, v4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkOperationHolder:Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->clear()V

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-interface/range {v12 .. v18}, Lorg/telegram/messenger/exoplayer/LoadControl;->update(Ljava/lang/Object;JJZ)Z

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_3

    :cond_7
    if-eqz v26, :cond_1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isTsChunk(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v30, v0

    check-cast v30, Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_8

    const-wide/high16 v4, -0x8000

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :cond_8
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/LoadControl;->getAllocator()Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, v30

    iget v15, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->type:I

    move-object/from16 v0, v30

    iget v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    move-wide/from16 v20, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v13, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v15, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v0, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->trigger:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V

    goto :goto_4
.end method

.method private notifyDownstreamFormatChanged(Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadCanceled(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$3;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$2;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLoadStarted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$1;-><init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;JIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearState()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method

.method private seekToInternal(J)V
    .locals 3

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->seek()V

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    return-void
.end method

.method private setTrackEnabledState(IZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v1, v1, p1

    if-eq v1, p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v0, v1, p1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-eq v1, p2, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aput-boolean p2, v1, p1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackEnabledStates:[Z

    aput-boolean p2, v1, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-eqz p2, :cond_2

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackEnabledStates:[Z

    aget-boolean v5, v5, p1

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->discardSamplesForDisabledTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;J)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v2, v5, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public disable(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->reset()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearState()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->setTrackEnabledState(IZ)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v5, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v2, p0, v3}, Lorg/telegram/messenger/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSourceTrackIndices:[I

    aget v0, v2, p1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->getSelectedTrackIndex()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->selectTrack(I)V

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-ne v2, v4, :cond_2

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    goto :goto_0

    :cond_4
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    goto :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 4

    const/4 v3, 0x1

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_3

    const-wide/16 v0, -0x3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getLargestParsedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->trackCount:I

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->maybeThrowError()V

    :cond_1
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadCanceled(J)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->restartFrom(J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearState()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/LoadControl;->trimAllocator()V

    goto :goto_0
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 14

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadStartTimeMs:J

    sub-long v12, v10, v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isTsChunk(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget v3, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->type:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget v4, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->trigger:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->startTimeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/hls/TsChunk;->endTimeUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v3, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->type:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget v4, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->trigger:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    goto :goto_2
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadable:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->previousTsLoadable:Lorg/telegram/messenger/exoplayer/hls/TsChunk;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->clearCurrentLoadable()V

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    return-void

    :cond_1
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableException:Ljava/io/IOException;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->currentLoadableExceptionTimestamp:J

    goto :goto_0
.end method

.method public prepare(J)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->prepare()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->buildTracks(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->clear()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-nez v1, :cond_4

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v4, "Loader:HLS"

    invoke-direct {v1, v4}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->bufferSizeContribution:I

    invoke-interface {v1, p0, v4}, Lorg/telegram/messenger/exoplayer/LoadControl;->register(Ljava/lang/Object;I)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_5

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->maybeStartLoading()V

    move v1, v3

    goto :goto_0
.end method

.method public readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 10

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v6, v6, p1

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, -0x2

    :goto_0
    return v6

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->getCurrentExtractor()Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, -0x2

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    iget-wide v8, v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    invoke-direct {p0, v4, v6, v8, v9}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyDownstreamFormatChanged(Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V

    :cond_3
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->configureSpliceTo(Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;)V

    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractorTrackIndices:[I

    aget v3, v6, p1

    const/4 v2, 0x0

    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v7, v2, 0x1

    if-le v6, v7, :cond_6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->hasSamples(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->extractors:Ljava/util/LinkedList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, -0x2

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getMediaFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer/MediaFormat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iput-object v5, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v5, v6, p1

    const/4 v6, -0x4

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamMediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v5, v6, p1

    :cond_8
    invoke-virtual {v1, v3, p5}, Lorg/telegram/messenger/exoplayer/hls/HlsExtractorWrapper;->getSample(ILorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-wide v6, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    const/4 v0, 0x1

    :goto_1
    iget v7, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_a

    const/high16 v6, 0x800

    :goto_2
    or-int/2addr v6, v7

    iput v6, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    const/4 v6, -0x3

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadingFinished:Z

    if-eqz v6, :cond_c

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_c
    const/4 v6, -0x2

    goto/16 :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    return-object p0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControl:Lorg/telegram/messenger/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/LoadControl;->unregister(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loadControlRegistered:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 3

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->enabledTrackCount:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->chunkSource:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->isLive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->pendingResetPositionUs:J

    :goto_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->lastSeekPositionUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->downstreamPositionUs:J

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->seekToInternal(J)V

    goto :goto_2
.end method

.method usToMs(J)J
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
