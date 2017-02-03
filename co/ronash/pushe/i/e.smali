.class public Lco/ronash/pushe/i/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lco/ronash/pushe/i/e;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/i/e;
    .locals 2

    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/i/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/i/e;

    invoke-direct {v0, p0}, Lco/ronash/pushe/i/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    invoke-virtual {v0, p0}, Lco/ronash/pushe/i/e;->b(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "_$_sch_total_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc1c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/i/e;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    new-instance v1, Lco/ronash/pushe/h/b/j;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/j;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    new-instance v1, Lco/ronash/pushe/i/f;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .locals 1

    new-instance v0, Lco/ronash/pushe/k/d;

    invoke-direct {v0}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v0, p2}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {v0, p1, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "t14"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t18"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t16"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t5"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t19"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t20"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t17"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "t21"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v2

    const-string/jumbo v3, "last_upstream_time"

    invoke-virtual {v2, v3, v6, v7}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v2, "Can not save/send this message data because another pushe app is responsible for it."

    new-instance v3, Lco/ronash/pushe/log/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Message Type"

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized c(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p1}, Lco/ronash/pushe/d/e;->a(Lco/ronash/pushe/k/d;Ljava/lang/String;)J

    const-string/jumbo v0, "SendManager saved ListPack to DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "listPack"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-direct {p0}, Lco/ronash/pushe/i/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p1}, Lco/ronash/pushe/d/e;->a(Lco/ronash/pushe/k/l;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "SendManager saved pack to DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_0
    invoke-direct {p0}, Lco/ronash/pushe/i/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p1}, Lco/ronash/pushe/d/e;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "SendManager saved string to DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_0
    invoke-direct {p0}, Lco/ronash/pushe/i/e;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->c(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .locals 1

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->c(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "$send_immediate_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 12

    monitor-enter p0

    :try_start_0
    new-instance v6, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lco/ronash/pushe/d/e;->a()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lco/ronash/pushe/i/f;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-wide/16 v2, 0x0

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1}, Lco/ronash/pushe/k/d;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lco/ronash/pushe/k/d;

    invoke-direct {v1}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v4, v0, v1}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1, v5}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v10

    invoke-virtual {v10, v1}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v10, v1

    add-long/2addr v2, v10

    :goto_1
    const-wide/16 v10, 0xc1c

    cmp-long v1, v2, v10

    if-ltz v1, :cond_5

    :try_start_2
    new-instance v1, Lco/ronash/pushe/h/b/j;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/j;-><init>()V

    invoke-virtual {v1, v4}, Lco/ronash/pushe/h/b/j;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v8, v1}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-wide/16 v2, 0x0

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1, v5}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v10

    invoke-virtual {v10, v1}, Lco/ronash/pushe/k/d;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v10, v1

    add-long/2addr v2, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lco/ronash/pushe/d/e;->b()V

    iget-object v0, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "_$_sch_total_size"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    new-instance v0, Lco/ronash/pushe/h/b/j;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/j;-><init>()V

    invoke-virtual {v0, v4}, Lco/ronash/pushe/h/b/j;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v8, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v4}, Lco/ronash/pushe/k/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Lco/ronash/pushe/d/e;->a(Lco/ronash/pushe/k/d;Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    move-object v1, v4

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "$send_immediate_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    return-void
.end method
