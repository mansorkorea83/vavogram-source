.class public Lorg/telegram/messenger/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;,
        Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static volatile Instance:Lorg/telegram/messenger/camera/CameraController; = null

.field private static final KEEP_ALIVE_SECONDS:I = 0x3c

.field private static final MAX_POOL_SIZE:I


# instance fields
.field protected availableFlashModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected cameraInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cameraInitied:Z

.field private onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field private recordedFile:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/telegram/messenger/camera/CameraController;->MAX_POOL_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    sget v3, Lorg/telegram/messenger/camera/CameraController;->MAX_POOL_SIZE:I

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/camera/CameraController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    return p1
.end method

.method static synthetic access$100([B)I
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/camera/CameraController;->getOrientation([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    return-object v0
.end method

.method public static chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;II",
            "Lorg/telegram/messenger/camera/Size;",
            ")",
            "Lorg/telegram/messenger/camera/Size;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, v2

    div-int/2addr v6, v4

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    if-lt v5, p2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {v5}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    :goto_1
    return-object v5

    :cond_2
    new-instance v5, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {v5}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {p0, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/camera/CameraController;
    .locals 4

    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_1

    const-class v3, Lorg/telegram/messenger/camera/CameraController;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_0

    new-instance v1, Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {v1}, Lorg/telegram/messenger/camera/CameraController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    :try_start_2
    monitor-exit v3

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method private static getOrientation([B)I
    .locals 15

    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v9

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_4

    add-int/lit8 v6, v5, 0x1

    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-ne v10, v11, :cond_a

    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    const/16 v10, 0xff

    if-ne v4, v10, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v6, 0x1

    const/16 v10, 0xd8

    if-eq v4, v10, :cond_2

    if-eq v4, v3, :cond_2

    const/16 v10, 0xd9

    if-eq v4, v10, :cond_4

    const/16 v10, 0xda

    if-ne v4, v10, :cond_6

    :cond_4
    :goto_2
    if-le v2, v14, :cond_0

    invoke-static {p0, v5, v13, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v8

    const v10, 0x49492a00

    if-eq v8, v10, :cond_5

    const v10, 0x4d4d002a

    if-ne v8, v10, :cond_0

    :cond_5
    const v10, 0x49492a00

    if-ne v8, v10, :cond_8

    :goto_3
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    const/16 v10, 0xa

    if-lt v0, v10, :cond_0

    if-gt v0, v2, :cond_0

    add-int/2addr v5, v0

    sub-int/2addr v2, v0

    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v0

    move v1, v0

    :goto_4
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    const/16 v10, 0xc

    if-lt v2, v10, :cond_0

    invoke-static {p0, v5, v12, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v8

    const/16 v10, 0x112

    if-ne v8, v10, :cond_9

    add-int/lit8 v10, v5, 0x8

    invoke-static {p0, v10, v12, v3}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/16 v9, 0xb4

    goto :goto_0

    :cond_6
    invoke-static {p0, v5, v12, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    if-lt v2, v12, :cond_0

    add-int v10, v5, v2

    array-length v11, p0

    if-gt v10, v11, :cond_0

    const/16 v10, 0xe1

    if-ne v4, v10, :cond_7

    if-lt v2, v14, :cond_7

    add-int/lit8 v10, v5, 0x2

    invoke-static {p0, v10, v13, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v5, 0x6

    invoke-static {p0, v10, v12, v9}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_7

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    :cond_7
    add-int/2addr v5, v2

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    move v3, v9

    goto :goto_3

    :pswitch_3
    const/16 v9, 0x5a

    goto/16 :goto_0

    :pswitch_4
    const/16 v9, 0x10e

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v2, v2, -0xc

    move v1, v0

    goto :goto_4

    :cond_a
    move v5, v6

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    const/4 v1, -0x1

    :cond_0
    const/4 v2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 p2, v0, -0x1

    if-lez v0, :cond_1

    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    add-int/2addr p1, v1

    move v0, p2

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraController$2;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    iget-object v2, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    iget-object v2, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lorg/telegram/messenger/camera/CameraController$3;

    invoke-direct {v3, p0, v0, p2}, Lorg/telegram/messenger/camera/CameraController$3;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCameras()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initCamera()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraController$1;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isCameraInitied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x320

    if-eq p2, v2, :cond_0

    const/16 v2, 0x321

    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/camera/CameraController$7;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/camera/CameraController$7;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController$6;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/camera/CameraSession;->configureRecorder(ILandroid/media/MediaRecorder;)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0x40000000

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    new-instance v3, Lorg/telegram/messenger/camera/Size;

    const/16 v4, 0x10

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0x2d0

    const/16 v6, 0x1e0

    invoke-static {v4, v5, v6, v3}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const v5, 0x1b7740

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/camera/CameraController$5;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 7

    :try_start_0
    iget-object v3, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V

    :cond_0
    if-nez p2, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Lorg/telegram/messenger/camera/CameraController$8;

    invoke-direct {v5, p0, v0}, Lorg/telegram/messenger/camera/CameraController$8;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/graphics/Bitmap;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z
    .locals 7

    const/4 v3, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v2, p2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/telegram/messenger/camera/CameraController$4;

    invoke-direct {v6, p0, p1, v2, p3}, Lorg/telegram/messenger/camera/CameraController$4;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
