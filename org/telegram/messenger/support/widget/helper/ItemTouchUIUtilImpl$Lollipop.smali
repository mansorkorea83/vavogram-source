.class Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Lollipop;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Honeycomb;
.source "ItemTouchUIUtilImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lollipop"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Honeycomb;-><init>()V

    return-void
.end method

.method private findMaxElevation(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)F
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    move v4, v2

    goto :goto_1

    :cond_2
    return v4
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 4

    if-eqz p7, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Lollipop;->findMaxElevation(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)F

    move-result v3

    add-float v0, v2, v3

    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method
