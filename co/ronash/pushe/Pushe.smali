.class public Lco/ronash/pushe/Pushe;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/Pushe;


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lco/ronash/pushe/Pushe;->b()Lco/ronash/pushe/Pushe;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lco/ronash/pushe/Pushe;->a(Landroid/content/Context;ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "Attempt to install application on android Api < 9. Pushe will NOT initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lco/ronash/pushe/log/c;

    invoke-direct {v1}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Background Initialization of Pushe failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->b(Lco/ronash/pushe/log/c;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;ZZ)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "--------+ Started Initialization of Pushe +--------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lco/ronash/pushe/b;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "Google play services is not installed or updated. Please update it to be able to use Pushe."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lco/ronash/pushe/k/o;

    const-string/jumbo v1, "Google play services is not installed or updated"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    const-string/jumbo v1, "Pushe Started"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Instance ID"

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lco/ronash/pushe/i;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, "Sender ID"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    invoke-virtual {v0}, Lco/ronash/pushe/i;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "Token State"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v0}, Lco/ronash/pushe/i;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "Token"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {v0}, Lco/ronash/pushe/i;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x8

    const-string/jumbo v4, "Google Play Services"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    invoke-static {p1}, Lco/ronash/pushe/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string/jumbo v4, "GcmNetworkManager"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    invoke-static {p1}, Lco/ronash/pushe/b;->c(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/Pushe;->d(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/Pushe;->e(Landroid/content/Context;)V

    invoke-static {p1}, Lco/ronash/pushe/Pushe;->b(Landroid/content/Context;)V

    iput-boolean v6, p0, Lco/ronash/pushe/Pushe;->b:Z

    invoke-static {p1}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/d/d;->b()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v1, "Outdated upstream messages removed from DB."

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Number of removed messages"

    aput-object v4, v3, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_1
    if-nez p3, :cond_2

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "$open_app_time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;J)V

    invoke-static {p1}, Lco/ronash/pushe/Pushe;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lco/ronash/pushe/Pushe;->f(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    if-eqz v0, :cond_0

    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    iget-boolean v0, v0, Lco/ronash/pushe/Pushe;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Lco/ronash/pushe/Pushe;
    .locals 2

    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/Pushe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/Pushe;

    invoke-direct {v0}, Lco/ronash/pushe/Pushe;-><init>()V

    sput-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/ronash/pushe/service/ScreenStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "delayed_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "time"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-static {v1}, Lco/ronash/pushe/h/a/h;->a(I)Lco/ronash/pushe/h/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/h;->b()Lco/ronash/pushe/h/a/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/ronash/pushe/h/a/i;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/g;

    move-result-object v0

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/h;->c()Lco/ronash/pushe/c/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lco/ronash/pushe/c/b;->a(Landroid/content/Context;)Lco/ronash/pushe/c/a;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lco/ronash/pushe/f;

    invoke-direct {v3, p0, v1, v0}, Lco/ronash/pushe/f;-><init>(Landroid/content/Context;Lco/ronash/pushe/c/a;Lco/ronash/pushe/h/a/g;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "delayed_notification"

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lco/ronash/pushe/c/a/k;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/k;->a()V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/e;

    invoke-direct {v1, p0}, Lco/ronash/pushe/e;-><init>(Lco/ronash/pushe/Pushe;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    :cond_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "update_app_notif"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "time"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    const-string/jumbo v2, "last_show_update_msg_time"

    invoke-virtual {v0, v2, v6, v7}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    :cond_0
    invoke-static {v1}, Lco/ronash/pushe/h/a/h;->a(I)Lco/ronash/pushe/h/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/h;->b()Lco/ronash/pushe/h/a/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/ronash/pushe/h/a/i;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/g;

    move-result-object v2

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/h;->c()Lco/ronash/pushe/c/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lco/ronash/pushe/c/b;->a(Landroid/content/Context;)Lco/ronash/pushe/c/a;

    move-result-object v1

    invoke-interface {v1, v2}, Lco/ronash/pushe/c/a;->a(Lco/ronash/pushe/h/a/g;)V

    const-string/jumbo v1, "last_show_update_msg_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;J)V

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string/jumbo v2, "update_app_notif"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "update_app_notif"

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Z)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lco/ronash/pushe/Pushe;->b()Lco/ronash/pushe/Pushe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lco/ronash/pushe/Pushe;->a(Landroid/content/Context;ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "Attempt to install application on android Api < 9. Pushe will NOT initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lco/ronash/pushe/log/c;

    invoke-direct {v1}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initializing Pushe failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-static {v1}, Lco/ronash/pushe/log/g;->b(Lco/ronash/pushe/log/c;)V

    const-string/jumbo v1, "Pushe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initializing Pushe failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setNotificationOff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "notif_off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setNotificationOn(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "notif_off"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    if-eqz v0, :cond_0

    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    iget-boolean v0, v0, Lco/ronash/pushe/Pushe;->b:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "Pushe must be initialized before subscribing to a topic. Please call subscribe later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lco/ronash/pushe/j/c;

    invoke-direct {v0, p0}, Lco/ronash/pushe/j/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/j/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lco/ronash/pushe/log/c;

    invoke-direct {v1}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subscribe to topic failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->b(Lco/ronash/pushe/log/c;)V

    goto :goto_0
.end method

.method public static unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    if-eqz v0, :cond_0

    sget-object v0, Lco/ronash/pushe/Pushe;->a:Lco/ronash/pushe/Pushe;

    iget-boolean v0, v0, Lco/ronash/pushe/Pushe;->b:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "Pushe must be initialized before unsubscribing from a topic. Please call unsubscribe later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lco/ronash/pushe/j/c;

    invoke-direct {v0, p0}, Lco/ronash/pushe/j/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/j/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lco/ronash/pushe/log/c;

    invoke-direct {v1}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsubscribe from topic failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->b(Lco/ronash/pushe/log/c;)V

    goto :goto_0
.end method
