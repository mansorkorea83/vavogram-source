.class public Lco/ronash/pushe/k/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-static {p0}, Lco/ronash/pushe/k/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lco/ronash/pushe/k/d;
    .locals 10

    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-static {p1}, Lco/ronash/pushe/k/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->b()V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lco/ronash/pushe/k/b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/g/a;->a()Landroid/location/Location;
    :try_end_2
    .catch Lco/ronash/pushe/k/b; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_2
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lco/ronash/pushe/k/h;->a:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lco/ronash/pushe/k/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_5

    :try_start_3
    new-instance v5, Lco/ronash/pushe/k/l;

    invoke-direct {v5}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v6, "ssid"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mac"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sig_level"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string/jumbo v6, "lat"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "long"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :cond_3
    :try_start_5
    const-string/jumbo v0, "0"

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "0"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
