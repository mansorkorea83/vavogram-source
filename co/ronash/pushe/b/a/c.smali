.class public Lco/ronash/pushe/b/a/c;
.super Lco/ronash/pushe/b/a/e;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    c = 0x493e0L
.end annotation

.annotation runtime Lco/ronash/pushe/task/a/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 4

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-static {}, Lco/ronash/pushe/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "t18"

    invoke-virtual {p0, p1, v0, v1}, Lco/ronash/pushe/b/a/c;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method
