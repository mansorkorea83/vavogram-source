.class public Lorg/telegram/messenger/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lorg/telegram/messenger/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lorg/telegram/messenger/volley/toolbox/HttpStack;

.field protected final mPool:Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->DEBUG:Z

    const/16 v0, 0xbb8

    sput v0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    const/16 v0, 0x1000

    sput v0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/toolbox/HttpStack;)V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;

    sget v1, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;-><init>(Lorg/telegram/messenger/volley/toolbox/HttpStack;Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/toolbox/HttpStack;Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mHttpStack:Lorg/telegram/messenger/volley/toolbox/HttpStack;

    iput-object p2, p0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mPool:Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lorg/telegram/messenger/volley/Cache$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/telegram/messenger/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p2, Lorg/telegram/messenger/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "If-None-Match"

    iget-object v2, p2, Lorg/telegram/messenger/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v2, p2, Lorg/telegram/messenger/volley/Cache$Entry;->lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lorg/telegram/messenger/volley/Cache$Entry;->lastModified:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;",
            "Lorg/telegram/messenger/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/VolleyError;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/Request;->getRetryPolicy()Lorg/telegram/messenger/volley/RetryPolicy;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v2, p2}, Lorg/telegram/messenger/volley/RetryPolicy;->retry(Lorg/telegram/messenger/volley/VolleyError;)V
    :try_end_0
    .catch Lorg/telegram/messenger/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method protected static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/volley/ServerError;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v1, Lorg/telegram/messenger/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v5, p0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mPool:Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v5, v6}, Lorg/telegram/messenger/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v5, Lorg/telegram/messenger/volley/ServerError;

    invoke-direct {v5}, Lorg/telegram/messenger/volley/ServerError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mPool:Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v1}, Lorg/telegram/messenger/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v5

    :cond_0
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mPool:Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lorg/telegram/messenger/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mPool:Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v1}, Lorg/telegram/messenger/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v5

    :catch_0
    move-exception v3

    const-string/jumbo v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/telegram/messenger/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string/jumbo v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/telegram/messenger/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logSlowRequests(JLorg/telegram/messenger/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const-string/jumbo v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lorg/telegram/messenger/volley/Request;->getRetryPolicy()Lorg/telegram/messenger/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_0
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string/jumbo v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long v6, v0, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/NetworkResponse;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;)",
            "Lorg/telegram/messenger/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/VolleyError;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    :goto_0
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :try_start_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/volley/Request;->getCacheEntry()Lorg/telegram/messenger/volley/Cache$Entry;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lorg/telegram/messenger/volley/Cache$Entry;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->mHttpStack:Lorg/telegram/messenger/volley/toolbox/HttpStack;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/volley/toolbox/HttpStack;->performRequest(Lorg/telegram/messenger/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    const/16 v3, 0x130

    if-ne v14, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/volley/Request;->getCacheEntry()Lorg/telegram/messenger/volley/Cache$Entry;

    move-result-object v20

    if-nez v20, :cond_0

    new-instance v3, Lorg/telegram/messenger/volley/NetworkResponse;

    const/16 v4, 0x130

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v8, v16, v24

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    move-object/from16 v11, v23

    :goto_1
    return-object v3

    :cond_0
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/messenger/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v7, Lorg/telegram/messenger/volley/NetworkResponse;

    const/16 v8, 0x130

    move-object/from16 v0, v20

    iget-object v9, v0, Lorg/telegram/messenger/volley/Cache$Entry;->data:[B

    move-object/from16 v0, v20

    iget-object v10, v0, Lorg/telegram/messenger/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v24

    invoke-direct/range {v7 .. v13}, Lorg/telegram/messenger/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    move-object/from16 v11, v23

    move-object v3, v7

    goto :goto_1

    :cond_1
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    :goto_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v8, v4, v24

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->logSlowRequests(JLorg/telegram/messenger/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v3, 0xc8

    if-lt v14, v3, :cond_2

    const/16 v3, 0x12b

    if-le v14, v3, :cond_4

    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_0
    move-exception v2

    :goto_3
    const-string/jumbo v3, "socket"

    new-instance v4, Lorg/telegram/messenger/volley/TimeoutError;

    invoke-direct {v4}, Lorg/telegram/messenger/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    :try_start_2
    new-array v11, v3, [B
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :cond_4
    :try_start_3
    new-instance v13, Lorg/telegram/messenger/volley/NetworkResponse;

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v18, v4, v24

    move-object v15, v11

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v19}, Lorg/telegram/messenger/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v3, v13

    goto :goto_1

    :catch_1
    move-exception v2

    move-object/from16 v11, v23

    :goto_4
    const-string/jumbo v3, "connection"

    new-instance v4, Lorg/telegram/messenger/volley/TimeoutError;

    invoke-direct {v4}, Lorg/telegram/messenger/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object/from16 v11, v23

    :goto_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    move-object/from16 v11, v23

    :goto_6
    const/4 v14, 0x0

    const/4 v13, 0x0

    if-eqz v22, :cond_6

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const-string/jumbo v3, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_8

    new-instance v13, Lorg/telegram/messenger/volley/NetworkResponse;

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v18, v4, v24

    move-object v15, v11

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v19}, Lorg/telegram/messenger/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v3, 0x191

    if-eq v14, v3, :cond_5

    const/16 v3, 0x193

    if-ne v14, v3, :cond_7

    :cond_5
    const-string/jumbo v3, "auth"

    new-instance v4, Lorg/telegram/messenger/volley/AuthFailureError;

    invoke-direct {v4, v13}, Lorg/telegram/messenger/volley/AuthFailureError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lorg/telegram/messenger/volley/NoConnectionError;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_7
    new-instance v3, Lorg/telegram/messenger/volley/ServerError;

    invoke-direct {v3, v13}, Lorg/telegram/messenger/volley/ServerError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    throw v3

    :cond_8
    new-instance v3, Lorg/telegram/messenger/volley/NetworkError;

    invoke-direct {v3, v13}, Lorg/telegram/messenger/volley/NetworkError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    throw v3

    :catch_4
    move-exception v2

    goto :goto_6

    :catch_5
    move-exception v2

    goto/16 :goto_5

    :catch_6
    move-exception v2

    goto/16 :goto_4

    :catch_7
    move-exception v2

    move-object/from16 v11, v23

    goto/16 :goto_3
.end method
