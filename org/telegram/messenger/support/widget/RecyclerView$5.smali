.class Lorg/telegram/messenger/support/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;->initChildrenHelper()V
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

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V
    invoke-static {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$1100(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v1, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$1300(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->detachViewFromParent(I)V
    invoke-static {v2, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$1400(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->onEnteredHiddenState()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$1500(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->onLeftHiddenState()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$1600(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$5;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$1200(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAllViews()V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V
    invoke-static {v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$1200(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$5;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeViewAt(I)V

    return-void
.end method
