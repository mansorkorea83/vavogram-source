.class Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    iput-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    :cond_0
    iput-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$6300(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$6400(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
