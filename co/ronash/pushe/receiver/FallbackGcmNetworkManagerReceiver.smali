.class public Lco/ronash/pushe/receiver/FallbackGcmNetworkManagerReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    const-string/jumbo v0, "co.ronash.pushe.CHECK_TASKS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Checking for due Gcm Tasks"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lco/ronash/pushe/task/scheduler/b/a;->a(Landroid/content/Context;)Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lco/ronash/pushe/log/b;->a(Landroid/content/Context;)Lco/ronash/pushe/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
