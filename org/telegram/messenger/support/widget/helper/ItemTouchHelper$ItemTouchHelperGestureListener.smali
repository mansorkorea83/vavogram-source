.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    invoke-static {v6, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$2400(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v7

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->access$2100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v4, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v5, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v8, 0x0

    iput v8, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    iput v8, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v7, 0x2

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v6, v3, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->access$800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
