.class public interface abstract Lorg/telegram/messenger/volley/RequestQueue$RequestFilter;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/volley/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestFilter"
.end annotation


# virtual methods
.method public abstract apply(Lorg/telegram/messenger/volley/Request;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;)Z"
        }
    .end annotation
.end method
