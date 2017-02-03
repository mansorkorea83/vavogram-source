.class public Lorg/telegram/messenger/support/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$State;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;,
        Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;,
        Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;,
        Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;,
        Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z = false

.field private static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

#the value of this static final field might be set in the static constructor
.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z = false

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private glowColor:I

.field private mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

.field private topGlowOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$3;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v2, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    new-instance v2, Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$1;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    new-instance v2, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v2, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$2;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$2;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$4;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollContainer(Z)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->initAdapterManager()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->initChildrenHelper()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAccessibilityDelegateCompat(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method static synthetic access$3000()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->repositionShadowingViews()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/support/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/support/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4502(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$4600()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/support/widget/RecyclerView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method private addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method private animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_1
    iput-object p2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object p1, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method private canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method private cancelTouch()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->preProcess()V

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    const/4 v2, 0x0

    :try_start_1
    sget-object v7, Lorg/telegram/messenger/support/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_2
    move-exception v4

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_3
    move-exception v4

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_4
    move-exception v4

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_5
    move-exception v4

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_6
    move-exception v4

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private didChildRangeChange(II)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v3, v2

    if-eq v3, p2, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v12, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2702(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2300(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v12

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v13

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v12, v5, v13, v14}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v5, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2700(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2300(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->saveOldPositions()V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1800(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v13, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    const/4 v6, 0x0

    :goto_3
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_8

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isInPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    const/16 v11, 0x2000

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-nez v10, :cond_6

    or-int/lit16 v4, v4, 0x1000

    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v4, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    if-eqz v10, :cond_7

    invoke-direct {p0, v7, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    :cond_7
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v7, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearOldPositions()V

    :goto_5
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x2

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    return-void

    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1702(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2502(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x4

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v9, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-eqz v5, :cond_1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    if-nez v3, :cond_2

    invoke-direct {p0, v10, v11, v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->process(Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v9, v9, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mPreviousLayoutItemCount:I
    invoke-static {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2802(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    iput-boolean v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2502(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2302(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$2602(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->access$2900(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->access$2900(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v12, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_7
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    if-nez v0, :cond_2

    iput-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    if-eqz v0, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    :cond_1
    :goto_1
    return v4

    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    :cond_3
    iput-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    aput v7, p1, v7

    aput v7, p1, v8

    :goto_0
    return-void

    :cond_0
    const v4, 0x7fffffff

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ge v5, v4, :cond_3

    move v4, v5

    :cond_3
    if-le v5, v3, :cond_1

    move v3, v5

    goto :goto_2

    :cond_4
    aput v4, p1, v7

    aput v3, p1, v8

    goto :goto_0
.end method

.method private getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 2

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    iget v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 9

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string/jumbo v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/support/widget/ChildHelper;

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$5;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;-><init>(Lorg/telegram/messenger/support/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    const/high16 v4, 0x3f00

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->reset()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markKnownViewsInvalid()V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->preProcess()V

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$2600(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2502(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2302(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    return-void

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v0, 0x0

    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureTopGlow()V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureRightGlow()V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2700(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method private releaseGlows()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private repositionShadowingViews()V
    .locals 9

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopNestedScroll()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x1

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScrollersInternal()V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_0
    :goto_0
    if-gez p2, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureTopGlow()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureRightGlow()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    :cond_5
    if-lez p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAddFocusables(Lorg/telegram/messenger/support/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V
    .locals 5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    if-eqz v3, :cond_0

    :try_start_0
    const-class v3, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string/jumbo v4, "mEdgeEffect"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method defaultOnMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchLayout()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v1, 0x0

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2100(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep1()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    :goto_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep3()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrollStateChanged(I)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrolled(II)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    :goto_1
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v8

    :goto_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    int-to-float v6, v6

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_3
    or-int/2addr v2, v6

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v5

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    :goto_4
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v8

    :goto_5
    or-int/2addr v2, v6

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/high16 v6, 0x4334

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_6
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_7
    or-int/2addr v2, v8

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    if-nez v2, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_7
    return-void

    :cond_8
    move v3, v7

    goto/16 :goto_1

    :cond_9
    move v2, v7

    goto/16 :goto_2

    :cond_a
    move v6, v7

    goto/16 :goto_3

    :cond_b
    move v3, v7

    goto/16 :goto_4

    :cond_c
    move v6, v7

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_e
    move v8, v7

    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureTopGlow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    :goto_1
    return-object p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-eq v4, p1, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 7

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_1

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_2

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_1

    const-string/jumbo v4, "RecyclerView"

    const-string/jumbo v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    :cond_4
    const/4 p2, 0x0

    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_0

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getCompatAccessibilityDelegate()Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v7, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

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

.method initAdapterManager()V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/support/widget/AdapterHelper;

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$6;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;-><init>(Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v4, 0x1

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-ge p1, p2, :cond_1

    move v5, p1

    move v1, p2

    const/4 v4, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

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

    invoke-virtual {v2, v6, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v7, 0x1

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v4, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    const/4 v6, 0x1

    add-int v3, p1, p2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->onDetach()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    neg-float v2, v3

    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    :goto_2
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    or-int/lit8 v8, v8, 0x1

    :cond_7
    if-eqz v4, :cond_8

    or-int/lit8 v8, v8, 0x2

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    if-gez v7, :cond_9

    const-string/jumbo v12, "RecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error processing scroll; pointer index for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v10, v12

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v10, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v11, v12

    const/4 v9, 0x0

    if-eqz v3, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_c

    const/4 v12, -0x1

    :goto_2
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    const/4 v9, 0x1

    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_d

    const/4 v12, -0x1

    :goto_3
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    const/4 v9, 0x1

    :cond_b
    if-eqz v9, :cond_4

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    :cond_c
    const/4 v12, 0x1

    goto :goto_2

    :cond_d
    const/4 v12, 0x1

    goto :goto_3

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$2000(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v2, v7, :cond_2

    if-ne v0, v7, :cond_2

    move v1, v3

    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    if-nez v1, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2100(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep1()V

    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v4, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2300(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    #setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    #calls: Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->copyFrom(Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->access$1900(Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    :cond_0
    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    aput v22, v18, v19

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v3, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    const/16 v18, 0x1

    goto/16 :goto_0

    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    const/4 v11, 0x0

    if-eqz v5, :cond_8

    or-int/lit8 v11, v11, 0x1

    :cond_8
    if-eqz v6, :cond_9

    or-int/lit8 v11, v11, 0x2

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    if-gez v10, :cond_a

    const-string/jumbo v18, "RecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    const/4 v12, 0x0

    if-eqz v5, :cond_c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    if-lez v7, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    :goto_2
    const/4 v12, 0x1

    :cond_c
    if-eqz v6, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    if-lez v8, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    :goto_3
    const/4 v12, 0x1

    :cond_d
    if-eqz v12, :cond_e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    if-eqz v5, :cond_11

    :goto_4
    if-eqz v6, :cond_12

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v13}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto :goto_3

    :cond_11
    const/4 v7, 0x0

    goto :goto_4

    :cond_12
    const/4 v8, 0x0

    goto :goto_5

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    :goto_6
    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    :goto_7
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_13

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_14

    :cond_13
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->fling(II)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_14
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetTouch()V

    goto/16 :goto_1

    :cond_16
    const/4 v15, 0x0

    goto :goto_6

    :cond_17
    const/16 v17, 0x0

    goto :goto_7

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-boolean v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    iget-object v1, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, p1, v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    :cond_0
    if-nez p1, :cond_1

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    return-void
.end method

.method saveOldPositions()V
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_1

    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v5, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    sub-int v3, p1, v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v5, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    sub-int v4, p2, v2

    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->repositionShadowingViews()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    if-eqz p3, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    move v0, v7

    :goto_1
    return v0

    :cond_a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->pullGlows(FFFF)V

    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    :cond_c
    move v0, v6

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidateGlows()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setGlowColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    const-string/jumbo v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    iput-boolean v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeAllViewsUnfiltered()V

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    :goto_0
    return-void

    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTopGlowOffset(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    return-void
.end method

.method public setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public swapAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    add-int v4, p1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
