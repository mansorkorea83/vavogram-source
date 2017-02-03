.class Lorg/telegram/messenger/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/volley/CacheDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/volley/CacheDispatcher;

.field final synthetic val$request:Lorg/telegram/messenger/volley/Request;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/volley/CacheDispatcher;Lorg/telegram/messenger/volley/Request;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/volley/CacheDispatcher$1;->this$0:Lorg/telegram/messenger/volley/CacheDispatcher;

    iput-object p2, p0, Lorg/telegram/messenger/volley/CacheDispatcher$1;->val$request:Lorg/telegram/messenger/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/volley/CacheDispatcher$1;->this$0:Lorg/telegram/messenger/volley/CacheDispatcher;

    #getter for: Lorg/telegram/messenger/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lorg/telegram/messenger/volley/CacheDispatcher;->access$000(Lorg/telegram/messenger/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/volley/CacheDispatcher$1;->val$request:Lorg/telegram/messenger/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
