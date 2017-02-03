.class public final Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;
.source "MetadataTrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private final metadataHandler:Landroid/os/Handler;

.field private final metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final metadataRenderer:Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private pendingMetadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private pendingMetadataTimestamp:J

.field private final sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/SampleSource;",
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    new-array v0, v2, [Lorg/telegram/messenger/exoplayer/SampleSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;)V

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private invokeRenderer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;->onMetadata(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;->parse([BI)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->invokeRenderer(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    goto :goto_0
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;->canParse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    return-void
.end method

.method protected onDiscontinuity(J)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    return-void
.end method
