.class public final Lorg/telegram/messenger/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;,
        Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;
    }
.end annotation


# static fields
.field private static final ABOVE_HIGH_WATERMARK:I = 0x0

.field private static final BELOW_LOW_WATERMARK:I = 0x2

.field private static final BETWEEN_WATERMARKS:I = 0x1

.field public static final DEFAULT_HIGH_BUFFER_LOAD:F = 0.8f

.field public static final DEFAULT_HIGH_WATERMARK_MS:I = 0x7530

.field public static final DEFAULT_LOW_BUFFER_LOAD:F = 0.2f

.field public static final DEFAULT_LOW_WATERMARK_MS:I = 0x3a98


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

.field private bufferState:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;

.field private fillingBuffers:Z

.field private final highBufferLoad:F

.field private final highWatermarkUs:J

.field private final loaderStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;",
            ">;"
        }
    .end annotation
.end field

.field private final loaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final lowBufferLoad:F

.field private final lowWatermarkUs:J

.field private maxLoadStartPositionUs:J

.field private streamingPrioritySet:Z

.field private targetBufferSize:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;)V
    .locals 8

    const/16 v4, 0x3a98

    const/16 v5, 0x7530

    const v6, 0x3e4ccccd

    const v7, 0x3f4ccccd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;IIFF)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;IIFF)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventHandler:Landroid/os/Handler;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventListener:Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->lowWatermarkUs:J

    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->highWatermarkUs:J

    iput p6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->lowBufferLoad:F

    iput p7, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->highBufferLoad:F

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/DefaultLoadControl;)Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventListener:Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;

    return-object v0
.end method

.method private getBufferState(I)I
    .locals 3

    int-to-float v1, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    int-to-float v2, v2

    div-float v0, v1, v2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->highBufferLoad:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->lowBufferLoad:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getLoaderBufferState(JJ)I
    .locals 7

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sub-long v0, p3, p1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->highWatermarkUs:J

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->lowWatermarkUs:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyLoadingChanged(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventListener:Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;-><init>(Lorg/telegram/messenger/exoplayer/DefaultLoadControl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateControlState()V
    .locals 12

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->bufferState:I

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;

    iget-boolean v8, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->loading:Z

    or-int/2addr v5, v8

    iget-wide v8, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    or-int/2addr v0, v8

    iget v8, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->bufferState:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v5, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    const/4 v8, 0x2

    if-eq v1, v8, :cond_3

    const/4 v8, 0x1

    if-ne v1, v8, :cond_7

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-eqz v8, :cond_7

    :cond_3
    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    if-nez v8, :cond_8

    sget-object v8, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->instance:Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->add(I)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->notifyLoadingChanged(Z)V

    :cond_4
    :goto_3
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-eqz v8, :cond_9

    const/4 v2, 0x0

    :goto_4
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;

    iget-wide v6, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_6

    :cond_5
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    sget-object v8, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->instance:Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->remove(I)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->notifyLoadingChanged(Z)V

    goto :goto_3

    :cond_9
    return-void
.end method


# virtual methods
.method public getAllocator()Lorg/telegram/messenger/exoplayer/upstream/Allocator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    new-instance v1, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;

    invoke-direct {v1, p2}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    return-void
.end method

.method public trimAllocator()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->trim(I)V

    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    iget v2, v0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->bufferSizeContribution:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->updateControlState()V

    return-void
.end method

.method public update(Ljava/lang/Object;JJZ)Z
    .locals 8

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->getLoaderBufferState(JJ)I

    move-result v3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;

    iget v6, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->bufferState:I

    if-ne v6, v3, :cond_0

    iget-wide v6, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_0

    iget-boolean v6, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->loading:Z

    if-eq v6, p6, :cond_5

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    iput v3, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->bufferState:I

    iput-wide p4, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    iput-boolean p6, v4, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$LoaderState;->loading:Z

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->getTotalBytesAllocated()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->getBufferState(I)I

    move-result v0

    iget v6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->bufferState:I

    if-eq v6, v0, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->bufferState:I

    :cond_2
    if-nez v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->updateControlState()V

    :cond_4
    iget v6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->targetBufferSize:I

    if-ge v2, v6, :cond_7

    const-wide/16 v6, -0x1

    cmp-long v6, p4, v6

    if-eqz v6, :cond_7

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    cmp-long v6, p4, v6

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method
