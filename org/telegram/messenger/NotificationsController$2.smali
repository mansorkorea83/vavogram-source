.class Lorg/telegram/messenger/NotificationsController$2;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->cleanup()V
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

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    const-wide/16 v4, 0x0

    #setter for: Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/NotificationsController;->access$302(Lorg/telegram/messenger/NotificationsController;J)J

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #setter for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$502(Lorg/telegram/messenger/NotificationsController;I)I

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$900(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->autoNotificationsIds:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$1000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #setter for: Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z
    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$1102(Lorg/telegram/messenger/NotificationsController;Z)Z

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #setter for: Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I
    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$1202(Lorg/telegram/messenger/NotificationsController;I)I

    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$2;->this$0:Lorg/telegram/messenger/NotificationsController;

    #calls: Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
    invoke-static {v3, v6}, Lorg/telegram/messenger/NotificationsController;->access$1300(Lorg/telegram/messenger/NotificationsController;I)V

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
