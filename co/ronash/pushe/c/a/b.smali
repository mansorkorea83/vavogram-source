.class public Lco/ronash/pushe/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/d;

    invoke-direct {v0}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/b;->a()Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v2, "t3"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    const-string/jumbo v0, "message_id"

    invoke-static {}, Lco/ronash/pushe/h/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v2, Lco/ronash/pushe/c/a/c;

    invoke-direct {v2, p0, v1}, Lco/ronash/pushe/c/a/c;-><init>(Lco/ronash/pushe/c/a/b;Lco/ronash/pushe/k/l;)V

    invoke-virtual {v0, v2}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/c/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/e/n;->a(Landroid/content/Context;)Lco/ronash/pushe/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/e/n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lco/ronash/pushe/k/l;
    .locals 6

    new-instance v0, Lco/ronash/pushe/e/k;

    iget-object v1, p0, Lco/ronash/pushe/c/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/e/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v2, "brand"

    invoke-virtual {v0}, Lco/ronash/pushe/e/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "model"

    invoke-virtual {v0}, Lco/ronash/pushe/e/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/ronash/pushe/e/k;->f()Landroid/graphics/Point;

    move-result-object v0

    const-string/jumbo v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "screen"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lco/ronash/pushe/e/i;

    iget-object v2, p0, Lco/ronash/pushe/c/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lco/ronash/pushe/e/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "device_id"

    invoke-virtual {v0}, Lco/ronash/pushe/e/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lco/ronash/pushe/c/a/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "device_id_2"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Lco/ronash/pushe/h/a/g;)V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/c/a/b;->b()V

    return-void
.end method
