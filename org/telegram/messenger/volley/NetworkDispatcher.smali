.class public Lorg/telegram/messenger/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lorg/telegram/messenger/volley/Cache;

.field private final mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

.field private final mNetwork:Lorg/telegram/messenger/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
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
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lorg/telegram/messenger/volley/Network;Lorg/telegram/messenger/volley/Cache;Lorg/telegram/messenger/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;>;",
            "Lorg/telegram/messenger/volley/Network;",
            "Lorg/telegram/messenger/volley/Cache;",
            "Lorg/telegram/messenger/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mNetwork:Lorg/telegram/messenger/volley/Network;

    iput-object p3, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mCache:Lorg/telegram/messenger/volley/Cache;

    iput-object p4, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    return-void
.end method

.method private addTrafficStatsTag(Lorg/telegram/messenger/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private parseAndDeliverNetworkError(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;",
            "Lorg/telegram/messenger/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/volley/Request;->parseNetworkError(Lorg/telegram/messenger/volley/VolleyError;)Lorg/telegram/messenger/volley/VolleyError;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/volley/ResponseDelivery;->postError(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 11

    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v7, "network-queue-take"

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "network-discard-cancelled"

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/telegram/messenger/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/volley/VolleyError;->setNetworkTimeMs(J)V

    invoke-direct {p0, v2, v6}, Lorg/telegram/messenger/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v7, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v7, :cond_0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/volley/NetworkDispatcher;->addTrafficStatsTag(Lorg/telegram/messenger/volley/Request;)V

    iget-object v7, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mNetwork:Lorg/telegram/messenger/volley/Network;

    invoke-interface {v7, v2}, Lorg/telegram/messenger/volley/Network;->performRequest(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/NetworkResponse;

    move-result-object v1

    const-string/jumbo v7, "network-http-complete"

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v7, v1, Lorg/telegram/messenger/volley/NetworkResponse;->notModified:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->hasHadResponseDelivered()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "not-modified"

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/telegram/messenger/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v7, "Unhandled exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lorg/telegram/messenger/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lorg/telegram/messenger/volley/VolleyError;

    invoke-direct {v6, v0}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/volley/VolleyError;->setNetworkTimeMs(J)V

    iget-object v7, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    invoke-interface {v7, v2, v6}, Lorg/telegram/messenger/volley/ResponseDelivery;->postError(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/volley/Request;->parseNetworkResponse(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Response;

    move-result-object v3

    const-string/jumbo v7, "network-parse-complete"

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v3, Lorg/telegram/messenger/volley/Response;->cacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mCache:Lorg/telegram/messenger/volley/Cache;

    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lorg/telegram/messenger/volley/Response;->cacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    invoke-interface {v7, v8, v9}, Lorg/telegram/messenger/volley/Cache;->put(Ljava/lang/String;Lorg/telegram/messenger/volley/Cache$Entry;)V

    const-string/jumbo v7, "network-cache-written"

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/messenger/volley/Request;->markDelivered()V

    iget-object v7, p0, Lorg/telegram/messenger/volley/NetworkDispatcher;->mDelivery:Lorg/telegram/messenger/volley/ResponseDelivery;

    invoke-interface {v7, v2, v3}, Lorg/telegram/messenger/volley/ResponseDelivery;->postResponse(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;)V
    :try_end_3
    .catch Lorg/telegram/messenger/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
