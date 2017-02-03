.class public Lco/ronash/pushe/service/IntentTaskRunner;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lco/ronash/pushe/i/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "PusheIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "messageType in handleGcmReceiveMessage(Intent) is unknown."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "gcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "send_event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "send_error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "deleted_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    const-string/jumbo v1, "from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    const-string/jumbo v1, "google.message_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    const-string/jumbo v1, "google.message_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lco/ronash/pushe/service/IntentTaskRunner;->a()Lco/ronash/pushe/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i/a;->a()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_0
        0x308f3e91 -> :sswitch_2
        0x3090df23 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Lco/ronash/pushe/i/a;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/service/IntentTaskRunner;->a:Lco/ronash/pushe/i/a;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/i/a;

    invoke-direct {v0, p0}, Lco/ronash/pushe/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/ronash/pushe/service/IntentTaskRunner;->a:Lco/ronash/pushe/i/a;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/service/IntentTaskRunner;->a:Lco/ronash/pushe/i/a;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "co.ronash.pushe.RUN_TASK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lco/ronash/pushe/service/IntentTaskRunner;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
