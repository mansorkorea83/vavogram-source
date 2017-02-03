.class Lorg/telegram/messenger/camera/CameraSession$1;
.super Landroid/view/OrientationEventListener;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraSession;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    #getter for: Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$000(Lorg/telegram/messenger/camera/CameraSession;)Landroid/view/OrientationEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    #getter for: Lorg/telegram/messenger/camera/CameraSession;->initied:Z
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$100(Lorg/telegram/messenger/camera/CameraSession;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    #getter for: Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$200(Lorg/telegram/messenger/camera/CameraSession;)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    #getter for: Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraSession;->access$300(Lorg/telegram/messenger/camera/CameraSession;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession$1;->this$0:Lorg/telegram/messenger/camera/CameraSession;

    #setter for: Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I
    invoke-static {v2, v1}, Lorg/telegram/messenger/camera/CameraSession;->access$202(Lorg/telegram/messenger/camera/CameraSession;I)I

    goto :goto_0
.end method
