.class public Lco/ronash/pushe/task/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v0, "Null task passed to SubscribeTask, task execution aborted."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "task_action"

    invoke-virtual {p2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Lco/ronash/pushe/c/a/m;

    invoke-direct {v1, p1}, Lco/ronash/pushe/c/a/m;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "topics"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "No topic list given for SubscribeTask, aborting task"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "No action defined for SubscribeTask"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "subscribe"

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lco/ronash/pushe/c/a/m;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/c/a/m;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "topics"

    invoke-virtual {v1, v0}, Lco/ronash/pushe/c/a/m;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_0
.end method
