.class public Lco/ronash/pushe/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lco/ronash/pushe/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lco/ronash/pushe/b/a;
    .locals 2

    sget-object v0, Lco/ronash/pushe/b/a;->a:Lco/ronash/pushe/b/a;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/b/a;->a:Lco/ronash/pushe/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/b/a;

    invoke-direct {v0}, Lco/ronash/pushe/b/a;-><init>()V

    sput-object v0, Lco/ronash/pushe/b/a;->a:Lco/ronash/pushe/b/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/b/a;->a:Lco/ronash/pushe/b/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/b/b;)V
    .locals 2

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    invoke-virtual {p2}, Lco/ronash/pushe/b/b;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lco/ronash/pushe/b/b;J)V
    .locals 3

    new-instance v0, Lco/ronash/pushe/task/a/e;

    invoke-direct {v0}, Lco/ronash/pushe/task/a/e;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/e;->a()Lco/ronash/pushe/task/a/d;

    move-result-object v0

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    invoke-virtual {p2}, Lco/ronash/pushe/b/b;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lco/ronash/pushe/b/b;)V
    .locals 3

    new-instance v0, Lco/ronash/pushe/task/a/e;

    invoke-direct {v0}, Lco/ronash/pushe/task/a/e;-><init>()V

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/e;->a()Lco/ronash/pushe/task/a/d;

    move-result-object v0

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    invoke-virtual {p2}, Lco/ronash/pushe/b/b;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method
