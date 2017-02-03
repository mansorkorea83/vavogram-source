.class public final Lorg/telegram/messenger/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;,
        Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;,
        Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;,
        Lorg/telegram/messenger/exoplayer/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field private static final MSG_END_OF_SOURCE:I = 0x0

.field private static final MSG_FATAL_ERROR:I = 0x2

.field private static final MSG_IO_EXCEPTION:I = 0x1


# instance fields
.field private currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private loading:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer/upstream/Loader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer/upstream/Loader;Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;)Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    return-object p1
.end method


# virtual methods
.method public cancelLoading()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;->quit()V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public startLoading(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->loading:Z

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Loader;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/Loader;->currentTask:Lorg/telegram/messenger/exoplayer/upstream/Loader$LoadTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
