.class public Lco/ronash/pushe/task/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;Lco/ronash/pushe/k/l;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "notification_id"

    invoke-virtual {p2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string/jumbo v0, "response_action"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dismissed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Invalid notification id %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "notification_id"

    invoke-virtual {p2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lco/ronash/pushe/k/l;)V
    .locals 4

    const-string/jumbo v0, "action"

    invoke-virtual {p2, v0}, Lco/ronash/pushe/k/l;->e(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "action_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lco/ronash/pushe/a/c;->a(Ljava/lang/String;)Lco/ronash/pushe/a/c;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "Attempted to handle invalid Action Type: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lco/ronash/pushe/a/c;->b()Lco/ronash/pushe/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/a/b;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/a/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lco/ronash/pushe/k/l;)V
    .locals 12

    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v0, "orig_msg_id"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "response_action"

    const-string/jumbo v2, ""

    invoke-virtual {p2, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "btn_id"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    const-string/jumbo v4, "clicked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Notification Clicked"

    new-instance v5, Lco/ronash/pushe/log/d;

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Message ID"

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    const-string/jumbo v7, "Button ID"

    aput-object v7, v6, v10

    aput-object v3, v6, v11

    invoke-direct {v5, v6}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v4, v5}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :goto_1
    new-instance v3, Lco/ronash/pushe/h/b/h;

    invoke-direct {v3}, Lco/ronash/pushe/h/b/h;-><init>()V

    invoke-virtual {v3, v1, v2, v0}, Lco/ronash/pushe/h/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lco/ronash/pushe/h/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v1

    const-string/jumbo v0, "none"

    :try_start_1
    invoke-static {p1}, Lco/ronash/pushe/k/f;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Lco/ronash/pushe/k/b; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_2
    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "internet"

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {p1}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v0

    const-string/jumbo v2, "t1"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void

    :cond_0
    const-string/jumbo v3, "dismissed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Notification Dismissed"

    new-instance v4, Lco/ronash/pushe/log/d;

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "Message ID"

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v3, v4}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "Invalid RESPONSE_ACTION on notification"

    new-instance v4, Lco/ronash/pushe/log/d;

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "Message ID"

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v10

    aput-object v2, v5, v11

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v3, v4}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "internet"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string/jumbo v2, "internet"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 1

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/task/b/e;->b(Landroid/content/Context;Lco/ronash/pushe/k/l;)V

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/task/b/e;->c(Landroid/content/Context;Lco/ronash/pushe/k/l;)V

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/task/b/e;->d(Landroid/content/Context;Lco/ronash/pushe/k/l;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method
