.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, v6, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget v2, v6, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v3, v6, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v4, v6, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v5, v6, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->toY:I

    #calls: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateMoveImpl(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$000(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    #getter for: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$100(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
