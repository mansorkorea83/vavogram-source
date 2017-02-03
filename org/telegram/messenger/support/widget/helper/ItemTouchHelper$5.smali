.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1600(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$2300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$1600(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #setter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I
    invoke-static {v1, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$2302(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;I)I

    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
