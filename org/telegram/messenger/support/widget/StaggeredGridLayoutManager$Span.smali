.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)V
    .locals 2

    const/high16 v1, -0x8000

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;ILorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x8000

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3

    const/high16 v2, -0x8000

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    if-ne v0, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_0

    :cond_4
    if-eq p2, v2, :cond_5

    add-int/2addr v0, p2

    :cond_5
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_1
.end method

.method calculateCachedEnd()V
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-boolean v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 9

    const/4 v7, -0x1

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-le p2, p1, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, p1

    :goto_1
    if-eq v4, p2, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    if-ge v2, v3, :cond_3

    if-le v1, v6, :cond_3

    if-eqz p3, :cond_2

    if-lt v2, v6, :cond_3

    if-gt v1, v3, :cond_3

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    :cond_0
    :goto_2
    return v7

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    goto :goto_2

    :cond_3
    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public getDeletedSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method getEndLine(I)I
    .locals 3

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1

    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_0

    move v4, v5

    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    move-result v7

    if-ne v4, v7, :cond_4

    move-object v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_2

    move v4, v5

    :goto_3
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$600(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v5

    :goto_4
    if-ne v4, v7, :cond_4

    move-object v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    move v7, v6

    goto :goto_4

    :cond_4
    return-object v0
.end method

.method getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method getStartLine(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_1

    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method invalidateCache()V
    .locals 1

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method onOffset(I)V
    .locals 2

    const/high16 v1, -0x8000

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 6

    const/high16 v5, -0x8000

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iput v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_2
    iput v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method popStart()V
    .locals 5

    const/high16 v4, -0x8000

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    iput v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4

    const/high16 v3, -0x8000

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method
