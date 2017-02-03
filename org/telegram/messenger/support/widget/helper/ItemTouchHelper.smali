.class public Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;,
        Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;,
        Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field private static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    new-instance v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    new-instance v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->moveIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Lorg/telegram/messenger/support/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setChildDrawingOrderCallback(Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;)V

    goto :goto_0
.end method

.method private checkHorizontalSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)I
    .locals 13

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v12, 0x0

    and-int/lit8 v8, p2, 0xc

    if-eqz v8, :cond_3

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    move v1, v6

    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget v11, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    cmpl-float v8, v4, v12

    if-lez v8, :cond_1

    move v3, v6

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v1, v3, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    :goto_2
    return v3

    :cond_0
    move v1, v7

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 11

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v9, v10, v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    const v9, 0xff00

    and-int/2addr v9, v4

    shr-int/lit8 v5, v9, 0x8

    if-nez v5, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p2, p3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p2, p3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v7, v9

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v8, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    cmpl-float v9, v0, v1

    if-lez v9, :cond_7

    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_6

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_6

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_9

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_8

    const/4 v9, 0x0

    goto :goto_0

    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_9

    const/4 v9, 0x0

    goto :goto_0

    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    iput v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v9, 0x0

    invoke-static {p2, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, 0x1

    invoke-direct {p0, v6, v9}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private checkVerticalSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)I
    .locals 13

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v12, 0x0

    and-int/lit8 v8, p2, 0x3

    if-eqz v8, :cond_3

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    move v1, v6

    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget v11, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    cmpl-float v8, v5, v12

    if-lez v8, :cond_1

    move v3, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v3, v1, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    :goto_2
    return v3

    :cond_0
    move v1, v7

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 6

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    return-void
.end method

.method private endRecoverAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I
    .locals 4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->access$2000(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;)I

    move-result v3

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v4, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v2, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v3, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v7, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method private findSwapTargets(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v14, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v21, v22, v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v22, v22, v14

    mul-int/lit8 v23, v16, 0x2

    add-int v20, v22, v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    mul-int/lit8 v23, v16, 0x2

    add-int v4, v22, v23

    add-int v22, v14, v20

    div-int/lit8 v5, v22, 0x2

    add-int v22, v21, v4

    div-int/lit8 v6, v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_4

    invoke-virtual {v15, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v4, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->canDropOver(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v6, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int v22, v10, v10

    mul-int v23, v11, v11

    add-int v9, v22, v23

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v3, v8, v9

    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    iget v9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v4, v8, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    iget v8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_0

    :cond_2
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    cmpl-float v8, v1, v0

    if-lez v8, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    :goto_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private hasRunningRecoverAnim()Z
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    #getter for: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z
    invoke-static {v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    goto :goto_0
.end method

.method private moveIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)F

    move-result v9

    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findSwapTargets(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, v8, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onMove(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onMoved(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;III)V

    goto/16 :goto_0
.end method

.method private obtainVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private postDispatchSwipe(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    new-instance v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setChildDrawingOrderCallback(Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;)V

    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 27

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    const-wide/high16 v6, -0x8000

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000

    cmp-long v5, v6, v14

    if-nez v5, :cond_8

    const-wide/16 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    :cond_1
    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v5, v6

    float-to-int v12, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v21, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    if-gez v21, :cond_9

    move/from16 v8, v21

    :cond_2
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    sub-int v26, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    if-gez v26, :cond_a

    move/from16 v16, v26

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v9

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lorg/telegram/messenger/support/widget/RecyclerView;IIIJ)I

    move-result v8

    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v17

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lorg/telegram/messenger/support/widget/RecyclerView;IIIJ)I

    move-result v16

    :cond_5
    if-nez v8, :cond_6

    if-eqz v16, :cond_b

    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000

    cmp-long v5, v6, v14

    if-nez v5, :cond_7

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollBy(II)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v10, v24, v6

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v23, v5, v6

    if-lez v23, :cond_2

    move/from16 v8, v23

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    if-lez v4, :cond_3

    move/from16 v16, v4

    goto/16 :goto_3

    :cond_b
    const-wide/high16 v6, -0x8000

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v20, -0x8000

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    :cond_1
    const/4 v5, 0x1

    mul-int/lit8 v14, p2, 0x8

    add-int/lit8 v14, v14, 0x8

    shl-int/2addr v5, v14

    add-int/lit8 v15, v5, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    if-ne v8, v5, :cond_6

    const/4 v13, 0x0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    sparse-switch v13, :sswitch_data_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ne v8, v5, :cond_7

    const/16 v7, 0x8

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x0

    aget v9, v5, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x1

    aget v10, v5, v14

    new-instance v4, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;

    move-object/from16 v5, p0

    move-object v14, v6

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIFFFFILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sub-float v20, v11, v9

    sub-float v21, v12, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v14, v7, v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Lorg/telegram/messenger/support/widget/RecyclerView;IFF)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    const/16 v18, 0x1

    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v5

    and-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v14, v14, 0x8

    shr-int/2addr v5, v14

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v14, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->swipeIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v13

    goto/16 :goto_1

    :sswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v14}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v11, v5, v14

    goto/16 :goto_2

    :sswitch_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v14}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v12, v5, v14

    goto/16 :goto_2

    :cond_7
    if-lez v13, :cond_8

    const/4 v7, 0x2

    goto/16 :goto_3

    :cond_8
    const/4 v7, 0x4

    goto/16 :goto_3

    :cond_9
    iget-object v5, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5, v14, v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupCallbacks()V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSlop:I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->initGestureDetector()V

    return-void
.end method

.method private swipeIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 9

    const v8, 0xff00

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6, v7, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v3

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    and-int v6, v0, v8

    shr-int/lit8 v1, v6, 0x8

    if-nez v1, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    and-int v6, v3, v8

    shr-int/lit8 v2, v6, 0x8

    iget v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_3

    and-int v5, v2, v4

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_4

    and-int v5, v2, v4

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p1, p3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42f0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    const/high16 v1, 0x4448

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->setupCallbacks()V

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 8

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->access$1400(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->access$1300(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method public startDrag(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->access$2100(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start drag has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public startSwipe(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    #calls: Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->access$2200(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start swipe has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "ItemTouchHelper"

    const-string/jumbo v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
