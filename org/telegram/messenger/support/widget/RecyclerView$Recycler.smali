.class public final Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4800(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private invalidateDisplayListInt(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    iput-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 7

    const/4 v4, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v5, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inconsistency detected. Invalid item position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->bindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    iput p2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_3
    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    iput-object v0, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_6

    :goto_1
    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void

    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    move-object v3, v1

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .locals 6

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    goto :goto_0
.end method

.method dispatchViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5300(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5300(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 v6, 0x0

    const/16 v10, 0x20

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v1, v6

    :goto_0
    return-object v1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    if-lez v3, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v1, v6

    goto :goto_0
.end method

.method getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method getScrapViewForId(JIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 7

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_1

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    if-nez p4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_4

    if-nez p4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez p4, :cond_5

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 v10, -0x1

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2400(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_0
    if-eq p2, v10, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-eq v7, p2, :cond_2

    const-string/jumbo v7, "RecyclerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Scrap view for position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isn\'t dirty but has"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " wrong view type! (found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p3, :cond_6

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, p1, p2}, Lorg/telegram/messenger/support/widget/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->unhide(Landroid/view/View;)V

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ne v3, v10, :cond_5

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->detachViewFromParent(I)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    move-object v1, v5

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_7

    if-nez p3, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 13

    if-ltz p1, :cond_0

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "). Item count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v12, v12, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-nez v3, :cond_5

    const/4 v10, -0x1

    invoke-virtual {p0, p1, v10, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v10

    if-nez v10, :cond_9

    if-nez p2, :cond_4

    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v11, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-nez v3, :cond_f

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v6

    if-ltz v6, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    if-lt v6, v10, :cond_a

    :cond_6
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Inconsistency detected. Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "(offset:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v12, v12, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " tag "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " adapter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v8, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapViewForId(JIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_b

    iput v6, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v2, 0x1

    :cond_b
    if-nez v3, :cond_d

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    invoke-virtual {v10, p0, p1, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_c

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    invoke-static {}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4600()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_e
    if-nez v3, :cond_f

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v11, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    :cond_f
    if-eqz v2, :cond_10

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_10

    const/16 v10, 0x2000

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v3, v10, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v11, v11, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v11, v3, v1, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    invoke-static {v10, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_10
    const/4 v0, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_12

    iput p1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_11
    :goto_3
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_14

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    iput-object v3, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v10

    :cond_12
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_13
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v6

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v3, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->bindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    const/4 v0, 0x1

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_11

    iput p1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    :cond_14
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_15
    move-object v7, v5

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    goto :goto_4

    :cond_16
    const/4 v10, 0x0

    goto :goto_5
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    const/4 v7, 0x0

    if-ge p1, p2, :cond_1

    move v5, p1

    move v1, p2

    const/4 v4, -0x1

    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v5, p2

    move v1, p1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v4, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5

    add-int v3, p1, p2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5002(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    const/4 v1, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5102(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isAttached:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    #calls: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$4900(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v5

    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_5
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v1, v5, :cond_6

    if-lez v1, :cond_6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_6
    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    const/4 v3, 0x1

    :cond_8
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    iput-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    :cond_9
    return-void

    :cond_a
    move v2, v6

    goto :goto_1
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    invoke-static {v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5200(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5100(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5002(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5102(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method validateViewHolderForOffsetPosition(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_2

    iget v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    iget v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    iget v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 6

    add-int v4, p1, p2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    :cond_2
    return-void
.end method
