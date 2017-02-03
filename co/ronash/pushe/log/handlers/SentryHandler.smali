.class public Lco/ronash/pushe/log/handlers/SentryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/log/e;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getLevel(Lco/ronash/pushe/log/f;)Lcom/a/a/k;
    .locals 2

    sget-object v0, Lco/ronash/pushe/log/handlers/b;->a:[I

    invoke-virtual {p1}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/a/a/k;->b:Lcom/a/a/k;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/a/a/k;->e:Lcom/a/a/k;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/a/a/k;->d:Lcom/a/a/k;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/a/a/k;->c:Lcom/a/a/k;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/a/a/k;->b:Lcom/a/a/k;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/a/a/k;->a:Lcom/a/a/k;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    iget-object v0, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTags(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lco/ronash/pushe/e/k;

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/e/k;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "platform"

    invoke-virtual {v1}, Lco/ronash/pushe/e/k;->a()Lco/ronash/pushe/e/m;

    move-result-object v3

    invoke-virtual {v3}, Lco/ronash/pushe/e/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "brand"

    invoke-virtual {v1}, Lco/ronash/pushe/e/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "model"

    invoke-virtual {v1}, Lco/ronash/pushe/e/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "os version"

    invoke-virtual {v1}, Lco/ronash/pushe/e/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "media"

    invoke-virtual {v1}, Lco/ronash/pushe/e/k;->b()Lco/ronash/pushe/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/e/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Pushe Version"

    const-string/jumbo v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Pushe Build Number"

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lco/ronash/pushe/e/i;

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/e/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Device ID"

    invoke-virtual {v1}, Lco/ronash/pushe/e/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "GooglePlay Service Status"

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v2

    const-string/jumbo v3, "google_play_stat"

    const-string/jumbo v4, "Code Unavailable"

    invoke-virtual {v2, v3, v4}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "google-play version"

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "Package Name"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getUser(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lco/ronash/pushe/e/i;

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lco/ronash/pushe/e/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Device ID"

    invoke-virtual {v0}, Lco/ronash/pushe/e/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Instance ID"

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Registration Token"

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string/jumbo v0, "Sender Id"

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lco/ronash/pushe/k/o; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "Registration State"

    const-string/jumbo v2, "Token state is not valid"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "Package Name"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "google-play version"

    iget-object v2, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v0, "Pushe Version"

    const-string/jumbo v2, "1.0.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Pushe Build Number"

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Sender Id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSenderId threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lco/ronash/pushe/k/o;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "Registration State"

    const-string/jumbo v2, "No Token"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "Registration State"

    const-string/jumbo v2, "Unregistered token"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "Registration State"

    const-string/jumbo v2, "Registration complete"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateExtras(Ljava/util/Map;)V
    .locals 3

    const-string/jumbo v0, "KeyStore Size"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/d/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Sent Mes"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_sent_messages"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Recv Mes"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_recv_messages"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Send Attmpt"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_send_attempts"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Sent Delivs"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_sent_deliveries"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Recv Resp"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_recv_response"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Recv Ack"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_acked_messages"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Crpt Recv"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_bad_recv_messages"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Sent Errs"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_sent_errors"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Delt Mes"

    iget-object v1, p0, Lco/ronash/pushe/log/handlers/SentryHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "$stats_deleted_messages"

    invoke-static {v1, v2}, Lco/ronash/pushe/log/h;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onLog(Lco/ronash/pushe/log/c;)V
    .locals 4

    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0}, Lcom/a/a/j;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->b(Ljava/lang/String;)Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/j;->a(J)Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->a()Lco/ronash/pushe/log/f;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/log/handlers/SentryHandler;->getLevel(Lco/ronash/pushe/log/f;)Lcom/a/a/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/j;->a(Lcom/a/a/k;)Lcom/a/a/j;

    move-result-object v1

    const-string/jumbo v2, "1.0.1"

    invoke-virtual {v1, v2}, Lcom/a/a/j;->c(Ljava/lang/String;)Lcom/a/a/j;

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "<Empty Log>"

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Ljava/lang/String;)Lcom/a/a/j;

    :goto_0
    invoke-direct {p0}, Lco/ronash/pushe/log/handlers/SentryHandler;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->h()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->h()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/j;->a(Ljava/lang/Throwable;)Lcom/a/a/j;

    :cond_1
    invoke-direct {p0, v1}, Lco/ronash/pushe/log/handlers/SentryHandler;->getTags(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/j;->b(Ljava/util/Map;)Lcom/a/a/j;

    invoke-direct {p0, v1}, Lco/ronash/pushe/log/handlers/SentryHandler;->getUser(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Ljava/util/Map;)Lcom/a/a/j;

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->b()Lco/ronash/pushe/log/d;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/log/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/ronash/pushe/log/handlers/SentryHandler;->populateExtras(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/a/a/j;->c(Ljava/util/Map;)Lcom/a/a/j;

    invoke-static {v0}, Lcom/a/a/a;->a(Lcom/a/a/j;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->e()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Ljava/lang/String;)Lcom/a/a/j;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Ljava/lang/String;)Lcom/a/a/j;

    goto :goto_0
.end method
