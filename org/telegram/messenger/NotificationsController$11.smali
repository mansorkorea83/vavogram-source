.class Lorg/telegram/messenger/NotificationsController$11;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$11;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I
    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->access$1200(Lorg/telegram/messenger/NotificationsController;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/NotificationsController$11;->val$count:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget v3, p0, Lorg/telegram/messenger/NotificationsController$11;->val$count:I

    #setter for: Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/NotificationsController;->access$1202(Lorg/telegram/messenger/NotificationsController;I)I

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "org.telegram.messenger/org.telegram.ui.LaunchActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "count"

    iget v3, p0, Lorg/telegram/messenger/NotificationsController$11;->val$count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.teslacoilsw.notifier/unread_count"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->launcherClassName:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->access$2100(Lorg/telegram/messenger/NotificationsController;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    #calls: Lorg/telegram/messenger/NotificationsController;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->access$2200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lorg/telegram/messenger/NotificationsController;->launcherClassName:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/telegram/messenger/NotificationsController;->access$2102(Lorg/telegram/messenger/NotificationsController;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->launcherClassName:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->access$2100(Lorg/telegram/messenger/NotificationsController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/messenger/NotificationsController$11$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController$11$1;-><init>(Lorg/telegram/messenger/NotificationsController$11;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
