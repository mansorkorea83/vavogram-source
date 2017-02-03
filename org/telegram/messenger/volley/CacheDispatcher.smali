.class public Lorg/telegram/messenger/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lorg/telegram/messenger/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lorg/telegram/messenger/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lorg/telegram/messenger/volley/Cache;Lorg/telegram/messenger/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;>;",
            "Lorg/telegram/messenger/volley/Cache;",
            "Lorg/telegram/messenger/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mQuit:Z

    iput-object p1, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mCache:Lorg/telegram/messenger/volley/Cache;

    iput-object p4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    sget-boolean v4, Lorg/telegram/messenger/volley/CacheDispatcher;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "start new dispatcher"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/telegram/messenger/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mCache:Lorg/telegram/messenger/volley/Cache;

    invoke-interface {v4}, Lorg/telegram/messenger/volley/Cache;->initialize()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/volley/Request;

    const-string/jumbo v4, "cache-queue-take"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "cache-discard-canceled"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mQuit:Z

    if-eqz v4, :cond_1

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mCache:Lorg/telegram/messenger/volley/Cache;

    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/telegram/messenger/volley/Cache;->get(Ljava/lang/String;)Lorg/telegram/messenger/volley/Cache$Entry;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v4, "cache-miss"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/volley/Cache$Entry;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "cache-hit-expired"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/volley/Request;->setCacheEntry(Lorg/telegram/messenger/volley/Cache$Entry;)Lorg/telegram/messenger/volley/Request;

    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "cache-hit"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    new-instance v4, Lorg/telegram/messenger/volley/NetworkResponse;

    iget-object v5, v1, Lorg/telegram/messenger/volley/Cache$Entry;->data:[B

    iget-object v6, v1, Lorg/telegram/messenger/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lorg/telegram/messenger/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->parseNetworkResponse(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Response;

    move-result-object v3

    const-string/jumbo v4, "cache-hit-parsed"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/volley/Cache$Entry;->refreshNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    invoke-interface {v4, v2, v3}, Lorg/telegram/messenger/volley/ResponseDelivery;->postResponse(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "cache-hit-refresh-needed"

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/volley/Request;->setCacheEntry(Lorg/telegram/messenger/volley/Cache$Entry;)Lorg/telegram/messenger/volley/Request;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/volley/Response;->intermediate:Z

    iget-object v4, p0, Lorg/telegram/messenger/volley/CacheDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    new-instance v5, Lorg/telegram/messenger/volley/CacheDispatcher$1;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/volley/CacheDispatcher$1;-><init>(Lorg/telegram/messenger/volley/CacheDispatcher;Lorg/telegram/messenger/volley/Request;)V

    invoke-interface {v4, v2, v3, v5}, Lorg/telegram/messenger/volley/ResponseDelivery;->postResponse(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
