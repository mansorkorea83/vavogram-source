.class Lorg/telegram/messenger/NotificationsController$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "delay reached"

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    const/4 v2, 0x1

    #calls: Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$1;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
