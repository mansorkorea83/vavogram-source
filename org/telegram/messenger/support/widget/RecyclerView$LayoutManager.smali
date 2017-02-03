.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field private mAutoMeasure:Z

.field mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mIsAttachedToWindow:Z

.field private mMeasurementCacheEnabled:Z

.field mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$6000(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_2
    :goto_2
    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iput-boolean v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne p2, v6, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result p2

    :cond_7
    if-ne v0, v6, :cond_8

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    if-eq v0, p2, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2
.end method

.method public static chooseSize(III)I
    .locals 3

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->detachViewFromParent(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    sub-int v4, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    if-ltz p3, :cond_1

    move v1, p3

    const/high16 v0, 0x4000

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    :cond_1
    if-ne p3, v6, :cond_2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v1, v2

    move v0, p1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ne p3, v5, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    move v1, p3

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_4
    if-ne p3, v6, :cond_5

    move v1, v2

    move v0, p1

    goto :goto_0

    :cond_5
    if-ne p3, v5, :cond_0

    move v1, v2

    const/high16 v3, -0x8000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x4000

    if-ne p1, v3, :cond_7

    :cond_6
    const/high16 v0, -0x8000

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    sub-int v4, p0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-ltz p2, :cond_1

    move v1, p2

    const/high16 v0, 0x4000

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_3

    move v1, p2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    move v1, v2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    move v1, v2

    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    iput v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    iput v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    return-object v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    :sswitch_0
    return v2

    :cond_1
    sparse-switch v0, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    if-ge v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    if-eq v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2

    invoke-static {p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->onViewDetached(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v1, :cond_0

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    return-void
.end method

.method dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5500(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionModeForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasFocus()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutHierarchical(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 0

    return-void
.end method

.method public onAddFocusables(Lorg/telegram/messenger/support/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x1

    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v6

    invoke-virtual {p4, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 2

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollBy(II)V

    move v2, v3

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clearScrap()V

    if-lez v2, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v2, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v4, v15, v16

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    const/4 v15, 0x0

    sub-int v16, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v15, 0x0

    sub-int v16, v4, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v15, 0x0

    sub-int v16, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v15, 0x0

    sub-int v16, v1, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    if-eqz v9, :cond_1

    move v5, v9

    :goto_0
    if-eqz v10, :cond_4

    move v6, v10

    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    :cond_0
    if-eqz p4, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollBy(II)V

    :goto_2
    const/4 v15, 0x1

    :goto_3
    return v15

    :cond_1
    sub-int v15, v3, v13

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    move v5, v8

    :goto_4
    goto :goto_0

    :cond_3
    sub-int v15, v2, v12

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    :cond_4
    sub-int v15, v4, v14

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0

    return-void
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return-void
.end method

.method setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 3

    const/high16 v2, 0x4000

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5600(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    :goto_0
    return-void

    :cond_0
    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/high16 v9, -0x8000

    const/high16 v10, -0x8000

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v13, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v3, v15, v16

    if-ge v7, v11, :cond_1

    move v11, v7

    :cond_1
    if-le v13, v9, :cond_2

    move v9, v13

    :cond_2
    if-ge v14, v12, :cond_3

    move v12, v14

    :cond_3
    if-le v3, v10, :cond_4

    move v10, v3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5400(Lorg/telegram/messenger/support/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15, v11, v12, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5400(Lorg/telegram/messenger/support/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return-void
.end method

.method setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x4000

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    :goto_0
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .locals 2

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->start(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
