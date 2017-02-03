.class Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lorg/telegram/messenger/volley/Request;

.field private final mResponse:Lorg/telegram/messenger/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/messenger/volley/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/volley/ExecutorDelivery;Lorg/telegram/messenger/volley/Request;Lorg/telegram/messenger/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lorg/telegram/messenger/volley/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    iput-object p3, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lorg/telegram/messenger/volley/Response;

    iput-object p4, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    invoke-virtual {v0}, Lorg/telegram/messenger/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    const-string/jumbo v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/Request;->finish(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lorg/telegram/messenger/volley/Response;

    invoke-virtual {v0}, Lorg/telegram/messenger/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    iget-object v1, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lorg/telegram/messenger/volley/Response;

    iget-object v1, v1, Lorg/telegram/messenger/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lorg/telegram/messenger/volley/Response;

    iget-boolean v0, v0, Lorg/telegram/messenger/volley/Response;->intermediate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/Request;->addMarker(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    iget-object v1, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lorg/telegram/messenger/volley/Response;

    iget-object v1, v1, Lorg/telegram/messenger/volley/Response;->error:Lorg/telegram/messenger/volley/VolleyError;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/Request;->deliverError(Lorg/telegram/messenger/volley/VolleyError;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lorg/telegram/messenger/volley/Request;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/Request;->finish(Ljava/lang/String;)V

    goto :goto_2
.end method
