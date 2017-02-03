.class public Lco/ronash/pushe/j/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/j/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lco/ronash/pushe/j/b;
    .locals 2

    sget-object v0, Lco/ronash/pushe/j/b;->a:Lco/ronash/pushe/j/b;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/j/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/j/b;->a:Lco/ronash/pushe/j/b;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/j/b;

    invoke-direct {v0}, Lco/ronash/pushe/j/b;-><init>()V

    sput-object v0, Lco/ronash/pushe/j/b;->a:Lco/ronash/pushe/j/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/j/b;->a:Lco/ronash/pushe/j/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "$#topics"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {v0, p2, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "1"

    invoke-virtual {v0, p2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string/jumbo v2, "$#topics"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    invoke-virtual {v0, p2}, Lco/ronash/pushe/k/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/j/a;)V
    .locals 1

    invoke-virtual {p2}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/j/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/ronash/pushe/j/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/content/Context;Lco/ronash/pushe/j/a;)V
    .locals 1

    invoke-virtual {p2}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/j/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lco/ronash/pushe/j/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
