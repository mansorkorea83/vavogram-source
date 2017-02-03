.class Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;
.super Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4000(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4000(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mPostUpdatesOnAnimation:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4300(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4400(Lorg/telegram/messenger/support/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4502(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method
