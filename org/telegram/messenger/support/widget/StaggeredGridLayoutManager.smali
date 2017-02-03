.class public Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.super Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field public static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mReverseLayout:Z

.field mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;-><init>()V

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v2, -0x8000

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    new-instance v0, Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LayoutState;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;-><init>()V

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x8000

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    new-instance v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v3, 0x2

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    new-instance v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    new-instance v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    iget v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    new-instance v1, Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {v1}, Lorg/telegram/messenger/support/widget/LayoutState;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v2, v0

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v2, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    :cond_4
    return-void

    :cond_5
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v2, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2
.end method

.method private attachViewToSpans(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Lorg/telegram/messenger/support/widget/LayoutState;)V
    .locals 2

    iget v0, p3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    move v3, v1

    :goto_1
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method private checkForGaps()Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v8, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    const/4 v2, -0x1

    :goto_2
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v4, v9, v2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    if-nez v1, :cond_6

    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move v6, v7

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v4, v8, v9, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    if-nez v5, :cond_7

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_3
.end method

.method private checkSpanForGap(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-boolean v5, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-le v5, v6, :cond_3

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-boolean v5, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x8000

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private createFullSpanItemFromEnd(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-void
.end method

.method private fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 28

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Ljava/util/BitSet;->set(IIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    const v27, 0x7fffffff

    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v18

    :goto_1
    const/4 v15, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p3}, Lorg/telegram/messenger/support/widget/LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v26

    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_8

    const/16 v16, 0x1

    :goto_3
    if-eqz v16, :cond_a

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v9, 0x0

    aget-object v17, v3, v9

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)V

    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_d

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v6

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v8, v6, v3

    if-eqz v16, :cond_1

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_1
    :goto_8
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    if-eqz v16, :cond_f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    :cond_2
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Lorg/telegram/messenger/support/widget/LayoutState;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_15

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v5, v7, v3

    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_17

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :goto_c
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    :cond_3
    :goto_e
    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_4
    const/high16 v27, -0x8000

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    add-int v27, v3, v9

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    sub-int v27, v3, v9

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    goto/16 :goto_1

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getNextSpan(Lorg/telegram/messenger/support/widget/LayoutState;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-result-object v17

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v17, v3, v26

    goto/16 :goto_5

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v8

    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v6, v8, v3

    if-eqz v16, :cond_1

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    :cond_e
    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v8

    goto :goto_f

    :cond_f
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v21, 0x1

    :goto_10
    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    if-eqz v20, :cond_10

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    :cond_11
    const/16 v21, 0x0

    goto :goto_10

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v3

    if-nez v3, :cond_13

    const/16 v21, 0x1

    :goto_11
    goto :goto_10

    :cond_13
    const/16 v21, 0x0

    goto :goto_11

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    iget v10, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v9, v10

    sub-int v7, v3, v9

    goto/16 :goto_a

    :cond_15
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v7, v5, v3

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, v17

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int v5, v3, v9

    goto :goto_12

    :cond_17
    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v6

    move v12, v5

    move v13, v8

    move v14, v7

    invoke-direct/range {v9 .. v14}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    :cond_1a
    if-nez v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v19, v3, v24

    :goto_13
    if-lez v19, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_14
    return v3

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v19, v23, v3

    goto :goto_13

    :cond_1d
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private fixEndGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V
    .locals 4

    const/high16 v3, -0x8000

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v3, v2

    if-lez v1, :cond_0

    neg-int v3, v1

    invoke-virtual {p0, v3, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v3

    neg-int v0, v3

    sub-int/2addr v1, v0

    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private fixStartGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V
    .locals 5

    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    if-lez v1, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    sub-int/2addr v1, v0

    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_0
.end method

.method private getFirstChildPosition()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getLastChildPosition()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMaxStart(I)I
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMinEnd(I)I
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMinStart(I)I
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getNextSpan(Lorg/telegram/messenger/support/widget/LayoutState;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .locals 14

    iget v12, p1, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v12}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v12, -0x1

    const/4 v2, -0x1

    const/4 v1, -0x1

    :goto_0
    iget v12, p1, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v6, 0x0

    const v7, 0x7fffffff

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    move v3, v11

    :goto_1
    if-eq v3, v2, :cond_5

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    if-ge v9, v7, :cond_0

    move-object v6, v8

    move v7, v9

    :cond_0
    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/high16 v5, -0x8000

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    move v3, v11

    :goto_2
    if-eq v3, v2, :cond_4

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    if-le v9, v5, :cond_3

    move-object v4, v8

    move v5, v9

    :cond_3
    add-int/2addr v3, v1

    goto :goto_2

    :cond_4
    move-object v6, v4

    :cond_5
    return-object v6
.end method

.method private handleUpdate(III)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    :goto_0
    const/16 v4, 0x8

    if-ne p3, v4, :cond_3

    if-ge p1, p2, :cond_2

    add-int/lit8 v0, p2, 0x1

    move v1, p1

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    sparse-switch p3, :sswitch_data_0

    :goto_2
    if-gt v0, v3, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, p2

    goto :goto_1

    :cond_3
    move v1, p1

    add-int v0, p1, p2

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p2, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    :goto_4
    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v0, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int v2, p2, v0

    iget v0, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int v3, p3, v0

    iget v0, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v4, p4, v0

    iget v0, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V
    .locals 10

    const/high16 v9, -0x8000

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_0

    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v8, :cond_2

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_7

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    :goto_1
    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_4

    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v3, :cond_9

    :cond_5
    iget-boolean v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_8

    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    if-eq v5, v9, :cond_6

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v2

    iget v6, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_3
    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v2

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput-boolean v4, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v5, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    iget-boolean v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_e

    invoke-direct {p0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v6, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    :goto_4
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_a

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_f

    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixEndGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixStartGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    :cond_a
    :goto_5
    const/4 v1, 0x0

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_10

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_10

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    :cond_d
    iget-boolean v5, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    invoke-direct {p0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v6, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    goto :goto_4

    :cond_f
    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixStartGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixEndGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    goto :goto_5

    :cond_10
    move v3, v4

    goto :goto_6
.end method

.method private preferLastSpan(I)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    if-nez v2, :cond_3

    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_2

    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_2
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_3
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_5

    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v3

    sub-int v1, v2, v3

    if-gez v1, :cond_4

    iget v0, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_4
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_1

    :cond_5
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    sub-int v1, v2, v3

    if-gez v1, :cond_6

    iget v0, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    :cond_6
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v0, v2, v3

    goto :goto_2
.end method

.method private recycleFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    :cond_4
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private recycleFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .locals 5

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popStart()V

    :cond_4
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 14

    const/4 v13, 0x1

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v11

    const/high16 v12, 0x4000

    if-ne v11, v12, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    int-to-float v10, v11

    cmpg-float v11, v10, v7

    if-gez v11, :cond_2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v11

    if-eqz v11, :cond_3

    const/high16 v11, 0x3f80

    mul-float/2addr v11, v10

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v12, v12

    div-float v10, v11, v12

    :cond_3
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v11

    const/high16 v12, -0x8000

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-eq v11, v0, :cond_0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v11, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v11, :cond_6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v11, v13, :cond_7

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v12, v12, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int v8, v11, v12

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v12, v12, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    mul-int v9, v11, v0

    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_7
    iget-object v11, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int v8, v11, v12

    iget-object v11, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    mul-int v9, v11, v0

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v11, v13, :cond_8

    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_8
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_3
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput p1, v2, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    :goto_0
    iput v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x8000

    iput v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput v5, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput p1, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    iget-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_1

    move v6, v4

    :goto_0
    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput-boolean v5, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStopInFocusable:Z

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput-boolean v4, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v7

    if-nez v7, :cond_4

    :goto_3
    iput-boolean v4, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    return-void

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    neg-int v7, v2

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method private updateRemainingSpans(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v1

    add-int v2, v1, v0

    if-gt v2, p3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v1

    sub-int v2, v1, v0

    if-lt v2, p3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 3

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    const/4 v2, 0x0

    const/high16 v4, -0x8000

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    const/4 v2, 0x0

    const/high16 v4, -0x8000

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 4

    if-nez p1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object p1
.end method

.method findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;
    .locals 8

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_0
    if-ltz v5, :cond_4

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_0

    if-lt v4, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    if-eqz p2, :cond_0

    if-nez v6, :cond_0

    move-object v6, v2

    goto :goto_1

    :cond_4
    move-object v2, v6

    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;
    .locals 9

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_0

    if-lt v4, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    if-eqz p2, :cond_0

    if-nez v7, :cond_0

    move-object v7, v2

    goto :goto_1

    :cond_4
    move-object v2, v7

    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, v2, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 4

    if-nez p1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object p1
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 4

    if-nez p1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object p1
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 4

    if-nez p1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object p1
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 23

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    new-instance v10, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move v7, v6

    add-int/lit8 v4, v19, -0x1

    :goto_1
    if-ge v7, v4, :cond_3

    const/4 v14, 0x1

    :goto_2
    move v8, v7

    :goto_3
    if-eq v8, v4, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_5

    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkSpanForGap(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_0
    :goto_4
    return-object v3

    :cond_1
    const/16 v18, -0x1

    goto :goto_0

    :cond_2
    move/from16 v7, v19

    add-int/lit8 v4, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->clear(I)V

    :cond_5
    iget-boolean v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    :cond_6
    add-int/2addr v8, v14

    goto :goto_3

    :cond_7
    add-int v20, v8, v14

    move/from16 v0, v20

    if-eq v0, v4, :cond_6

    add-int v20, v8, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    if-lt v11, v15, :cond_0

    if-ne v11, v15, :cond_8

    const/4 v5, 0x1

    :cond_8
    :goto_5
    if-eqz v5, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    if-gez v20, :cond_a

    const/16 v20, 0x1

    move/from16 v21, v20

    :goto_6
    if-gez v18, :cond_b

    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_0

    move/from16 v0, v17

    if-ne v12, v0, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/16 v20, 0x0

    move/from16 v21, v20

    goto :goto_6

    :cond_b
    const/16 v20, 0x0

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method isLayoutRTL()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget-boolean v3, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    iget-object v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    :goto_1
    invoke-direct {p0, v6, p4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v9, v9, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v6

    iput v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const v9, 0x3eaaaaab

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mStopInFocusable:Z

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p3, v8, p4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-nez v3, :cond_4

    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    if-ne v7, v0, :cond_0

    :cond_4
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v1, v8, -0x1

    :goto_2
    if-ltz v1, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    if-ne v7, v0, :cond_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v8, :cond_9

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    if-ne v7, v0, :cond_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v0, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    invoke-super {p0, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :goto_0
    return-void

    :cond_0
    move-object v7, v6

    check-cast v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean v1, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean v3, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_2
    iget-boolean v4, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x8000

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_1

    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    :goto_2
    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    const/4 v0, 0x0

    :goto_3
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    :cond_2
    :goto_4
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iput v6, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    :cond_6
    iput v5, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v5, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v6, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    :cond_0
    return-void
.end method

.method scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 7

    if-lez p1, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    invoke-direct {p0, v3, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v6, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v3

    iput v6, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput v0, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p2, v5, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    if-ge v0, v1, :cond_1

    move v4, p1

    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    return v4

    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int v4, v1

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v7

    invoke-static {p2, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v5

    :goto_0
    invoke-virtual {p0, v5, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v7

    invoke-static {p3, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid orientation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;ILorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$2;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$2;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/high16 v10, -0x8000

    const/4 v7, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v11, :cond_1

    :cond_0
    move v7, v6

    :goto_0
    return v7

    :cond_1
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_3

    :cond_2
    iput v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v10, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    move v7, v6

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v8, v11, :cond_4

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v8, v7, :cond_f

    :cond_4
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    :goto_1
    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v6, v10, :cond_7

    iget-boolean v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v5, v6, v8

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int v5, v6, v8

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    if-le v1, v6, :cond_9

    iget-boolean v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    :goto_2
    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v6, v8

    if-gez v4, :cond_a

    neg-int v6, v4

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int v2, v6, v8

    if-gez v2, :cond_b

    iput v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    :cond_b
    iput v10, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_0

    :cond_c
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v8, v10, :cond_e

    iget v8, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v3

    if-ne v3, v7, :cond_d

    move v6, v7

    :cond_d
    iput-boolean v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    iput-boolean v7, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto/16 :goto_0

    :cond_e
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_3

    :cond_f
    iput v10, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_0
.end method

.method updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    const/4 v0, 0x0

    iput v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    return-void
.end method
