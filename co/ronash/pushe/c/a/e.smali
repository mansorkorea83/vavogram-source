.class public Lco/ronash/pushe/c/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/e;->a()Lco/ronash/pushe/k/l;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/k/d;

    invoke-direct {v1}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v2, "t5"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    const-string/jumbo v1, "message_id"

    invoke-static {}, Lco/ronash/pushe/h/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/c/a/f;

    invoke-direct {v2, p0, v0}, Lco/ronash/pushe/c/a/f;-><init>(Lco/ronash/pushe/c/a/e;Lco/ronash/pushe/k/l;)V

    invoke-virtual {v1, v2}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/k/l;
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->b()V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lco/ronash/pushe/k/b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/g/a;->a()Landroid/location/Location;
    :try_end_2
    .catch Lco/ronash/pushe/k/b; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_1
    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    if-eqz v0, :cond_5

    const-string/jumbo v2, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lco/ronash/pushe/k/f;->a()Lco/ronash/pushe/k/g;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v2, "ip"

    iget-object v0, v0, Lco/ronash/pushe/k/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v0, "none"

    :try_start_3
    iget-object v2, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/k/f;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Lco/ronash/pushe/k/b; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :goto_4
    const-string/jumbo v2, "wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v0, "type"

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/k/h;->c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "mac"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v3, "ssid"

    invoke-virtual {v1, v3, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sig_level"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    :cond_4
    :goto_5
    const-string/jumbo v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    const-string/jumbo v0, "lat"

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "long"

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v0, "Getting public ip info failed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(Lco/ronash/pushe/h/a/g;)V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/c/a/e;->b()V

    return-void
.end method
