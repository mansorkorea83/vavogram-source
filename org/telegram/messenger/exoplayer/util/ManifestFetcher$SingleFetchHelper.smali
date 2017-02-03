.class Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleFetchHelper"
.end annotation


# instance fields
.field private final callbackLooper:Landroid/os/Looper;

.field private loadStartTimestamp:J

.field private final singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

.field private final wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable",
            "<TT;>;",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->callbackLooper:Landroid/os/Looper;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v1, "manifestLoader:single"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    return-void
.end method

.method private releaseLoader()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifestError(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v1
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->loadStartTimestamp:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->onSingleFetchCompleted(Ljava/lang/Object;J)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifest(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v1
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->wrappedCallback:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v0, p2}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;->onSingleManifestError(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->releaseLoader()V

    throw v0
.end method

.method public startLoading()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->loadStartTimestamp:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->callbackLooper:Landroid/os/Looper;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, v2, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    return-void
.end method
