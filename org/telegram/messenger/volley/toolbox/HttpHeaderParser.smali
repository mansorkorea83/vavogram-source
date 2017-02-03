.class public Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Cache$Entry;
    .locals 30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-wide/16 v16, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v24, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const-string/jumbo v27, "Date"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-static {v6}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    :cond_0
    const-string/jumbo v27, "Cache-Control"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    const-string/jumbo v27, ","

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_7

    aget-object v27, v26, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v27, "no-cache"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    const-string/jumbo v27, "no-store"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    const-string/jumbo v27, "max-age="

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v27, 0x8

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v27, "stale-while-revalidate="

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v27, 0x17

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v24

    goto :goto_2

    :cond_5
    const-string/jumbo v27, "must-revalidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "proxy-revalidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const-string/jumbo v27, "Expires"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v20

    :cond_8
    const-string/jumbo v27, "Last-Modified"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v10

    :cond_9
    const-string/jumbo v27, "ETag"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v3, :cond_c

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v12

    add-long v22, v14, v28

    if-eqz v9, :cond_b

    move-wide/from16 v4, v22

    :cond_a
    :goto_3
    new-instance v2, Lorg/telegram/messenger/volley/Cache$Entry;

    invoke-direct {v2}, Lorg/telegram/messenger/volley/Cache$Entry;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/volley/NetworkResponse;->data:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v2, Lorg/telegram/messenger/volley/Cache$Entry;->data:[B

    move-object/from16 v0, v18

    iput-object v0, v2, Lorg/telegram/messenger/volley/Cache$Entry;->etag:Ljava/lang/String;

    move-wide/from16 v0, v22

    iput-wide v0, v2, Lorg/telegram/messenger/volley/Cache$Entry;->softTtl:J

    iput-wide v4, v2, Lorg/telegram/messenger/volley/Cache$Entry;->ttl:J

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lorg/telegram/messenger/volley/Cache$Entry;->serverDate:J

    iput-wide v10, v2, Lorg/telegram/messenger/volley/Cache$Entry;->lastModified:J

    iput-object v7, v2, Lorg/telegram/messenger/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    goto/16 :goto_1

    :cond_b
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    add-long v4, v22, v28

    goto :goto_3

    :cond_c
    const-wide/16 v28, 0x0

    cmp-long v27, v16, v28

    if-lez v27, :cond_a

    cmp-long v27, v20, v16

    if-ltz v27, :cond_a

    sub-long v28, v20, v16

    add-long v22, v14, v28

    move-wide/from16 v4, v22

    goto :goto_3

    :catch_0
    move-exception v27

    goto/16 :goto_2

    :catch_1
    move-exception v27

    goto/16 :goto_2
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object p1, v2, v4

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0
.end method
