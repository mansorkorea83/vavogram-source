.class public interface abstract Lorg/telegram/messenger/volley/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/NetworkResponse;
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
.end method
