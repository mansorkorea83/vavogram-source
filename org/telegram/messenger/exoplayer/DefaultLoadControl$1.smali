.class Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->notifyLoadingChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/DefaultLoadControl;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/DefaultLoadControl;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;->this$0:Lorg/telegram/messenger/exoplayer/DefaultLoadControl;

    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;->val$loading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;->this$0:Lorg/telegram/messenger/exoplayer/DefaultLoadControl;

    #getter for: Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->eventListener:Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl;->access$000(Lorg/telegram/messenger/exoplayer/DefaultLoadControl;)Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$1;->val$loading:Z

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/DefaultLoadControl$EventListener;->onLoadingChanged(Z)V

    return-void
.end method
