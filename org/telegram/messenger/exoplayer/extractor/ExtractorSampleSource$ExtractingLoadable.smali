.class Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private volatile loadCanceled:Z

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

.field private final requestedBufferSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->uri:Landroid/net/Uri;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-static {p4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->requestedBufferSize:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    iput-wide p6, v0, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v9, 0x0

    :goto_0
    if-nez v9, :cond_7

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_7

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v1, v4, v10

    if-eqz v1, :cond_0

    add-long/2addr v4, v2

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->selectExtractor(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    move-result-object v7

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v1, :cond_1

    invoke-interface {v7}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->seek()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_1
    :goto_1
    if-nez v9, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->requestedBufferSize:I

    invoke-interface {v1, v6}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->blockWhileTotalBytesAllocatedExceeds(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    invoke-interface {v7, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v9, v1, :cond_4

    const/4 v9, 0x0

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v1, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v0, v8

    :goto_3
    const/4 v6, 0x1

    if-ne v9, v6, :cond_6

    const/4 v9, 0x0

    :cond_5
    :goto_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1

    :cond_6
    if-eqz v0, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    goto :goto_4

    :cond_7
    return-void

    :catchall_1
    move-exception v1

    goto :goto_3
.end method
