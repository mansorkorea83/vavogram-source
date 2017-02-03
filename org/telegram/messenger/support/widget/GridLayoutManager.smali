.class public Lorg/telegram/messenger/support/widget/GridLayoutManager;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v1, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V
    .locals 10

    const/4 v9, 0x1

    if-eqz p5, :cond_0

    const/4 v6, 0x0

    move v1, p3

    const/4 v0, 0x1

    :goto_0
    iget v8, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v8, -0x1

    const/4 v5, -0x1

    :goto_1
    move v2, v6

    :goto_2
    if-eq v2, v1, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v8, v2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, p1, p2, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v8

    #setter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$102(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;I)I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v8

    if-le v8, v9, :cond_2

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int v8, v4, v8

    #setter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$002(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;I)I

    :goto_3
    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v4, v8

    add-int/2addr v2, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, p3, -0x1

    const/4 v1, -0x1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    #setter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$002(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;I)I

    goto :goto_3

    :cond_3
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 9

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    array-length v6, p0

    add-int/lit8 v7, p1, 0x1

    if-ne v6, v7, :cond_0

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget v6, p0, v6

    if-eq v6, p2, :cond_1

    :cond_0
    add-int/lit8 v6, p1, 0x1

    new-array p0, v6, [I

    :cond_1
    aput v8, p0, v8

    div-int v4, p2, p1

    rem-int v5, p2, p1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_0
    if-gt v2, p1, :cond_3

    move v3, v4

    add-int/2addr v0, v5

    if-lez v0, :cond_2

    sub-int v6, p1, v0

    if-ge v6, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v0, p1

    :cond_2
    add-int/2addr v1, v3

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 7

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    :goto_0
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v5

    if-eqz v2, :cond_1

    :goto_1
    if-lez v5, :cond_3

    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v6, :cond_3

    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    iget v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v0, v5

    :goto_2
    if-ge v4, v1, :cond_2

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v3

    if-le v3, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto :goto_2

    :cond_2
    iput v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 4

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p3, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, p3, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 2

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V
    .locals 5

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-nez p4, :cond_0

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    :cond_1
    if-nez p4, :cond_2

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    :cond_2
    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    :cond_3
    if-eqz p5, :cond_5

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

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
.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureLayoutState()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v3, p3

    :goto_1
    if-eq v3, p4, :cond_5

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v4, :cond_0

    move-object v4, v8

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v1, :cond_6

    :cond_4
    if-nez v5, :cond_0

    move-object v5, v8

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    :goto_3
    move-object v8, v5

    :cond_6
    return-object v8

    :cond_7
    move-object v5, v4

    goto :goto_3
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getModeInOther()I

    move-result v35

    const/high16 v4, 0x4000

    move/from16 v0, v35

    if-eq v0, v4, :cond_2

    const/16 v27, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    aget v26, v4, v5

    :goto_1
    if-eqz v27, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    :cond_0
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v9, 0x1

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v39, v0

    if-nez v9, :cond_1

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v29

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v30

    add-int v39, v29, v30

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v7, v4, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v39, :cond_6

    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v42

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v42

    if-le v0, v4, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " spans but GridLayoutManager has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " spans."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_5
    sub-int v39, v39, v42

    if-gez v39, :cond_7

    :cond_6
    if-nez v7, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    :goto_4
    return-void

    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_6

    add-int v8, v8, v42

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V

    const/16 v28, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v0, v7, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v28

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_c

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v5

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    sub-int v5, v4, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_e

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_7
    const/4 v10, 0x0

    move/from16 v0, v35

    invoke-static {v5, v0, v6, v4, v10}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_f

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_8
    const/4 v15, 0x1

    invoke-static {v5, v6, v10, v4, v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    const/4 v14, 0x1

    :goto_9
    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    move/from16 v33, v41

    :cond_9
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v5

    int-to-float v5, v5

    div-float v36, v4, v5

    cmpl-float v4, v36, v34

    if-lez v4, :cond_a

    move/from16 v34, v36

    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    :cond_c
    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_8

    :cond_10
    const/4 v14, 0x0

    goto :goto_9

    :cond_11
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    const/4 v14, 0x1

    :goto_b
    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v14

    invoke-direct/range {v15 .. v20}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_a

    :cond_12
    const/4 v14, 0x0

    goto :goto_b

    :cond_13
    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/16 v33, 0x0

    const/16 v28, 0x0

    :goto_c
    move/from16 v0, v28

    if-ge v0, v7, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v28

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v5

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    sub-int v5, v4, v5

    const/high16 v6, 0x4000

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_15

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_d
    const/4 v15, 0x0

    invoke-static {v5, v6, v10, v4, v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_16

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_e
    const/4 v15, 0x1

    invoke-static {v5, v6, v10, v4, v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    invoke-direct/range {v15 .. v20}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v33

    if-le v0, v1, :cond_14

    move/from16 v33, v41

    :cond_14
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_c

    :cond_15
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_d

    :cond_16
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_e

    :cond_17
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v12

    invoke-direct/range {v15 .. v20}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_f

    :cond_18
    const/high16 v4, 0x4000

    move/from16 v0, v33

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v28, 0x0

    :goto_10
    move/from16 v0, v28

    if-ge v0, v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    move/from16 v0, v33

    if-eq v4, v0, :cond_19

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v5

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    sub-int v5, v4, v5

    const/high16 v6, 0x4000

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1a

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_11
    const/4 v15, 0x0

    invoke-static {v5, v6, v10, v4, v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, v11

    move/from16 v17, v12

    invoke-direct/range {v15 .. v20}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    :cond_19
    :goto_12
    add-int/lit8 v28, v28, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_11

    :cond_1b
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, v11

    move/from16 v19, v12

    invoke-direct/range {v16 .. v21}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_12

    :cond_1c
    move/from16 v0, v33

    move-object/from16 v1, p4

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    const/16 v31, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    sub-int v43, v25, v33

    :goto_13
    const/16 v28, 0x0

    :goto_14
    move/from16 v0, v28

    if-ge v0, v7, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v28

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    add-int/2addr v6, v10

    aget v5, v5, v6

    add-int v40, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    sub-int v31, v40, v4

    :goto_15
    move-object/from16 v0, v37

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v21, v31, v4

    move-object/from16 v0, v37

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v22, v43, v4

    move-object/from16 v0, v37

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v23, v40, v4

    move-object/from16 v0, v37

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v24, v25, v4

    move-object/from16 v19, p0

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_1e
    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_14

    :cond_1f
    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v43, v0

    add-int v25, v43, v33

    goto/16 :goto_13

    :cond_20
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v40, v0

    sub-int v31, v40, v33

    goto/16 :goto_13

    :cond_21
    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v31, v0

    add-int v40, v31, v33

    goto/16 :goto_13

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    add-int v31, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v40, v31, v4

    goto :goto_15

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    aget v5, v5, v6

    add-int v43, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v25, v43, v4

    goto/16 :goto_15

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 27

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v12}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v19

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v12}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v25

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v12}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v26

    add-int v18, v25, v26

    invoke-super/range {p0 .. p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v21

    if-nez v21, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v10

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_4

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v25

    add-int/lit8 v20, v25, -0x1

    const/4 v9, -0x1

    const/4 v11, -0x1

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v16, 0x1

    :goto_4
    const/16 v22, 0x0

    const/16 v24, -0x1

    const/16 v23, 0x0

    move/from16 v8, v20

    :goto_5
    if-eq v8, v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_8

    :cond_3
    move-object/from16 v4, v22

    goto :goto_0

    :cond_4
    const/16 v25, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/16 v20, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v11

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v25

    if-nez v25, :cond_a

    :cond_9
    :goto_6
    add-int/2addr v8, v9

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v25

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$100(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v26

    add-int v5, v25, v26

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    move/from16 v0, v18

    if-eq v5, v0, :cond_0

    :cond_b
    const/4 v3, 0x0

    if-nez v22, :cond_d

    const/4 v3, 0x1

    :cond_c
    :goto_7
    if-eqz v3, :cond_9

    move-object/from16 v22, v4

    #getter for: Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->access$000(Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;)I

    move-result v24

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    sub-int v23, v25, v26

    goto :goto_6

    :cond_d
    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v15, v14, v13

    move/from16 v0, v23

    if-le v15, v0, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    move/from16 v0, v23

    if-ne v15, v0, :cond_c

    move/from16 v0, v24

    if-le v7, v0, :cond_f

    const/16 v25, 0x1

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    const/16 v25, 0x0

    goto :goto_8
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v0, v9, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    invoke-super {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :goto_0
    return-void

    :cond_0
    move-object v8, v9

    check-cast v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v2

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    :cond_1
    return-void
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v6, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    iget v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v7

    invoke-static {p2, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    :goto_0
    invoke-virtual {p0, v5, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v7

    invoke-static {p3, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-ge p1, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    goto :goto_0
.end method

.method public setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
