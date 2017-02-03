.class public abstract Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/util/extensions/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;",
        "O:",
        "Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Thread;",
        "Lorg/telegram/messenger/exoplayer/util/extensions/Decoder",
        "<TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TO;>;"
        }
    .end annotation
.end field

.field private released:Z


# direct methods
.method protected constructor <init>([Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    array-length v1, p1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->createInputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    array-length v1, p2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->createOutputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private canDecodeBuffer()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decode()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v5

    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->released:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->canDecodeBuffer()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->released:Z

    if-eqz v6, :cond_1

    monitor-exit v5

    :goto_1
    return v3

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v1, v6, v7

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;->reset()V

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;->setFlag(I)V

    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    if-nez v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    aput-object v1, v3, v6

    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    aput-object v0, v3, v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;->setFlag(I)V

    :cond_5
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->decode(Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;Z)Ljava/lang/Exception;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_6
    :try_start_4
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method private maybeNotifyDecodeLoop()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private maybeThrowException()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->exception:Ljava/lang/Exception;

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createInputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract decode(Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueInputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->maybeThrowException()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    aget-object v0, v1, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;->reset()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->maybeThrowException()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->flushed:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    aput-object v3, v0, v2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    aput-object v0, v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    aput-object v0, v2, v3

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;)V

    return-void
.end method

.method public final queueInputBuffer(Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->maybeThrowException()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->maybeNotifyDecodeLoop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->released:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method protected releaseOutputBuffer(Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/OutputBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->maybeNotifyDecodeLoop()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 2

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->decode()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final setInitialInputBufferSize(I)V
    .locals 3

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBufferCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/extensions/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer/SampleHolder;->ensureSpaceForWrite(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method
