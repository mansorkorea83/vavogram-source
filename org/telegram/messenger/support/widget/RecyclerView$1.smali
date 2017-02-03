.class Lorg/telegram/messenger/support/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$302(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$400(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_0
.end method
