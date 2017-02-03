.class public Lco/ronash/pushe/receiver/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lco/ronash/pushe/c/a/k;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/k;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "UpdateReceiver: Package updated, invalidating GCM token and re-registering to GCM and Pushe-Server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/k;->b()V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/k;->a()V

    invoke-static {}, Lco/ronash/pushe/i;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1}, Lco/ronash/pushe/log/b;->a(Landroid/content/Context;)Lco/ronash/pushe/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
