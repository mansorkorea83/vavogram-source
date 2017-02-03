.class public Lorg/telegram/messenger/camera/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;
    }
.end annotation


# instance fields
.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private clipLeft:I

.field private clipTop:I

.field private delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

.field private initied:Z

.field private isFrontface:Z

.field private mirror:Z

.field private previewSize:Lorg/telegram/messenger/camera/Size;

.field private textureView:Landroid/view/TextureView;

.field private txform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method private adjustAspectRatio(III)V
    .locals 12

    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getHeight()I

    move-result v7

    div-int/lit8 v9, v8, 0x2

    int-to-float v5, v9

    div-int/lit8 v9, v7, 0x2

    int-to-float v6, v9

    if-eqz p3, :cond_0

    const/4 v9, 0x2

    if-ne p3, v9, :cond_6

    :cond_0
    iget v9, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    add-int/2addr v9, v7

    int-to-float v9, v9

    int-to-float v10, p1

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    add-int/2addr v10, v8

    int-to-float v10, v10

    int-to-float v11, p2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_0
    int-to-float v9, p1

    mul-float v1, v9, v2

    int-to-float v9, p2

    mul-float v0, v9, v2

    int-to-float v9, v8

    div-float v3, v0, v9

    int-to-float v9, v7

    div-float v4, v1, v9

    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v9, 0x1

    if-eq v9, p3, :cond_1

    const/4 v9, 0x3

    if-ne v9, p3, :cond_7

    :cond_1
    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    add-int/lit8 v10, p3, -0x2

    mul-int/lit8 v10, v10, 0x5a

    int-to-float v10, v10

    invoke-virtual {v9, v10, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_2
    :goto_1
    iget-boolean v9, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    const/high16 v10, -0x4080

    const/high16 v11, 0x3f80

    invoke-virtual {v9, v10, v11, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    iget v9, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    if-nez v9, :cond_4

    iget v9, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    iget v10, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    :cond_6
    iget v9, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    add-int/2addr v9, v7

    int-to-float v9, v9

    int-to-float v10, p2

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    add-int/2addr v10, v8

    int-to-float v10, v10

    int-to-float v11, p1

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_7
    const/4 v9, 0x2

    if-ne v9, p3, :cond_2

    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    const/high16 v10, 0x4334

    invoke-virtual {v9, v10, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1
.end method

.method private checkPreviewMatrix()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/messenger/camera/CameraView;->adjustAspectRatio(III)V

    goto :goto_0
.end method

.method private initCamera(Z)V
    .locals 14

    const/16 v13, 0x500

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/camera/CameraInfo;

    iget-boolean v10, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-eqz v10, :cond_0

    iget v10, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-nez v10, :cond_1

    :cond_0
    iget-boolean v10, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez v10, :cond_4

    iget v10, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-nez v10, :cond_4

    :cond_1
    move-object v4, v1

    :cond_2
    if-nez v4, :cond_5

    :cond_3
    :goto_1
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const v8, 0x3faaaaab

    const v7, 0x3fe38e39

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    sub-float v10, v6, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3dcccccd

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/4 v10, 0x4

    const/4 v11, 0x3

    invoke-direct {v5, v10, v11}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    :goto_2
    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v10}, Landroid/view/TextureView;->getWidth()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v10}, Landroid/view/TextureView;->getHeight()I

    move-result v10

    if-lez v10, :cond_6

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v10

    mul-int/2addr v10, v9

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v11

    div-int v3, v10, v11

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10, v9, v3, v5}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    :cond_6
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10, v13, v13, v5}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v5

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v10}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v10}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v11

    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v10, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    const/16 v12, 0x100

    invoke-direct {v10, v4, v11, v5, v12}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V

    iput-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v12}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v12

    new-instance v13, Lorg/telegram/messenger/camera/CameraView$1;

    invoke-direct {v13, p0}, Lorg/telegram/messenger/camera/CameraView$1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v10, v11, v12, v13}, Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_7
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/16 v10, 0x10

    const/16 v11, 0x9

    invoke-direct {v5, v10, v11}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    goto/16 :goto_2
.end method


# virtual methods
.method public destroy(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraSession()Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method public hasFrontFaceCamera()Z
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v2, :cond_0

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

.method public isFrontface()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    invoke-interface {v0}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraInit()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    :cond_1
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    return-void
.end method

.method public switchCamera()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V

    return-void
.end method
