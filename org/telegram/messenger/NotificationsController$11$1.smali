.class Lorg/telegram/messenger/NotificationsController$11$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$11;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$11;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$11$1;->this$1:Lorg/telegram/messenger/NotificationsController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "badge_count"

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$11$1;->this$1:Lorg/telegram/messenger/NotificationsController$11;

    iget v3, v3, Lorg/telegram/messenger/NotificationsController$11;->val$count:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "badge_count_package_name"

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "badge_count_class_name"

    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController$11$1;->this$1:Lorg/telegram/messenger/NotificationsController$11;

    iget-object v3, v3, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->launcherClassName:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$2100(Lorg/telegram/messenger/NotificationsController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
