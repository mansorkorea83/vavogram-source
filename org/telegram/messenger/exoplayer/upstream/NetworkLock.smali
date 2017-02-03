.class public final Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;
.super Ljava/lang/Object;
.source "NetworkLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/NetworkLock$PriorityTooLowException;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_PRIORITY:I = 0xa

.field public static final STREAMING_PRIORITY:I

.field public static final instance:Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->instance:Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    const v0, 0x7fffffff

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public proceed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public proceedNonBlocking(I)Z
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

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

.method public proceedOrThrow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/upstream/NetworkLock$PriorityTooLowException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    if-ge v0, p1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock$PriorityTooLowException;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    invoke-direct {v0, p1, v2}, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock$PriorityTooLowException;-><init>(II)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public remove(I)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->highestPriority:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
