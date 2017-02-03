.class public Lorg/telegram/messenger/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lorg/telegram/messenger/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/volley/ExecutorDelivery$1;-><init>(Lorg/telegram/messenger/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;",
            "Lorg/telegram/messenger/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string/jumbo v1, "post-error"

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/telegram/messenger/volley/Response;->error(Lorg/telegram/messenger/volley/VolleyError;)Lorg/telegram/messenger/volley/Response;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lorg/telegram/messenger/volley/ExecutorDelivery;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;",
            "Lorg/telegram/messenger/volley/Response",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/volley/ExecutorDelivery;->postResponse(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;",
            "Lorg/telegram/messenger/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/Request;->markDelivered()V

    const-string/jumbo v0, "post-response"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lorg/telegram/messenger/volley/ExecutorDelivery;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
