.class public final Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private rotation:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 14

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v10, v9

    int-to-float v11, v4

    div-float v8, v10, v11

    iget v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v8

    const/high16 v11, 0x3f80

    sub-float v1, v10, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3c23d70a

    cmpg-float v10, v10, v11

    if-lez v10, :cond_0

    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_4

    int-to-float v10, v9

    iget v11, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v10, v11

    float-to-int v4, v10

    :goto_1
    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-super {p0, v10, v11}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v10, v2, Landroid/view/TextureView;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getWidth()I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getHeight()I

    move-result v10

    div-int/lit8 v6, v10, 0x2

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    iget v11, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->rotation:I

    int-to-float v11, v11

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->rotation:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_2

    iget v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->rotation:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x3f80

    div-float/2addr v11, v7

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v10, v11, v7, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    check-cast v2, Landroid/view/TextureView;

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v10}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_4
    int-to-float v10, v4

    iget v11, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setAspectRatio(FI)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->rotation:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    iput p2, p0, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->rotation:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/AspectRatioFrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method
