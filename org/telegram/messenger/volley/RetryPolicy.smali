.class public interface abstract Lorg/telegram/messenger/volley/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lorg/telegram/messenger/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/VolleyError;
        }
    .end annotation
.end method
