.class public Lco/ronash/pushe/task/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/task/d;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Lco/ronash/pushe/task/scheduler/a;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/task/d;->b:Ljava/util/Map;

    new-instance v0, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-direct {v0, p1}, Lco/ronash/pushe/task/scheduler/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/ronash/pushe/task/d;->c:Lco/ronash/pushe/task/scheduler/a;

    return-void
.end method

.method private a(Lco/ronash/pushe/k/l;)I
    .locals 3

    const-string/jumbo v0, "retry_count"

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "retry_count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/task/d;
    .locals 2

    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/task/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/task/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/task/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/task/d;->b(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()Lco/ronash/pushe/task/scheduler/a;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/d;->c:Lco/ronash/pushe/task/scheduler/a;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lco/ronash/pushe/task/b;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private c(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Lco/ronash/pushe/task/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    const-class v2, Lco/ronash/pushe/service/IntentTaskRunner;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "co.ronash.pushe.RUN_TASK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "task_type"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "task_data"

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lco/ronash/pushe/task/a;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/a;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "task_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "task_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lco/ronash/pushe/task/d;->a(Ljava/lang/String;)Lco/ronash/pushe/task/a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Retrieving intent task failed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-class v2, Lco/ronash/pushe/task/b/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lco/ronash/pushe/task/b/e;

    invoke-direct {v0}, Lco/ronash/pushe/task/b/e;-><init>()V

    :cond_1
    :goto_1
    const-string/jumbo v2, "task_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    :try_end_0
    .catch Lco/ronash/pushe/k/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_2
    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lco/ronash/pushe/task/b;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v2, "Error parsing task json data from intent"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Lco/ronash/pushe/task/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/task/a;Lco/ronash/pushe/k/l;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "task_id"

    invoke-virtual {p1}, Lco/ronash/pushe/task/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/task/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lco/ronash/pushe/task/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method

.method public a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V
    .locals 7

    const/4 v4, 0x4

    const/4 v6, 0x1

    new-instance v1, Lco/ronash/pushe/task/a/e;

    invoke-direct {v1}, Lco/ronash/pushe/task/a/e;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Lco/ronash/pushe/task/a/e;->a(Lco/ronash/pushe/task/a/d;)V

    :cond_0
    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_1
    const-class v0, Lco/ronash/pushe/task/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/a/a;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/a/e;->a(Lco/ronash/pushe/task/a/a;)V

    :goto_0
    invoke-virtual {v1}, Lco/ronash/pushe/task/a/e;->a()Lco/ronash/pushe/task/a/d;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_3
    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lco/ronash/pushe/task/d;->a()Lco/ronash/pushe/task/scheduler/a;

    move-result-object v2

    iget-object v3, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v2, v3, v0, v1}, Lco/ronash/pushe/task/scheduler/a;->a(Landroid/content/Context;Ljava/lang/String;Lco/ronash/pushe/task/a/d;)V

    const-string/jumbo v1, "Scheduling GCM Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Type"

    aput-object v5, v3, v4

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "Tag"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void

    :cond_4
    new-instance v0, Lco/ronash/pushe/task/a/b;

    invoke-direct {v0}, Lco/ronash/pushe/task/a/b;-><init>()V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/a/e;->a(Lco/ronash/pushe/task/a/a;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_2

    invoke-static {v4}, Lco/ronash/pushe/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;Lco/ronash/pushe/task/a/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lco/ronash/pushe/task/c;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "Running GCM Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Tag"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v3, v0

    :goto_0
    if-nez v4, :cond_1

    const-string/jumbo v0, "Invalid task type %s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/k/l;)I

    move-result v1

    :cond_2
    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v0, v2, v3}, Lco/ronash/pushe/task/b;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;

    move-result-object v2

    if-eqz v3, :cond_4

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    if-ne v2, v0, :cond_6

    if-ltz v1, :cond_6

    const-class v0, Lco/ronash/pushe/task/a/a;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/a/a;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lco/ronash/pushe/task/a/a;->e()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Lco/ronash/pushe/task/a/a;->e()I

    move-result v0

    if-le v1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed too many times, aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Creating task instance %s failed"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Creating task isntance %s failed"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto/16 :goto_1

    :cond_4
    if-eqz v3, :cond_3

    iget-object v0, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " attempt %d failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot cancel non-singleton task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lco/ronash/pushe/task/d;->a()Lco/ronash/pushe/task/scheduler/a;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lco/ronash/pushe/task/scheduler/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method
