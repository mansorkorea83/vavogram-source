.class public Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;
.super Lorg/telegram/messenger/volley/toolbox/JsonRequest;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lorg/telegram/messenger/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lorg/telegram/messenger/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lorg/telegram/messenger/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lorg/telegram/messenger/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected parseNetworkResponse(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/NetworkResponse;",
            ")",
            "Lorg/telegram/messenger/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lorg/telegram/messenger/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v5, "utf-8"

    invoke-static {v4, v5}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/volley/Response;->success(Ljava/lang/Object;Lorg/telegram/messenger/volley/Cache$Entry;)Lorg/telegram/messenger/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Lorg/telegram/messenger/volley/ParseError;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lorg/telegram/messenger/volley/Response;->error(Lorg/telegram/messenger/volley/VolleyError;)Lorg/telegram/messenger/volley/Response;

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Lorg/telegram/messenger/volley/ParseError;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lorg/telegram/messenger/volley/Response;->error(Lorg/telegram/messenger/volley/VolleyError;)Lorg/telegram/messenger/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
