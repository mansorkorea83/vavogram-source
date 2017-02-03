.class public Lco/ronash/pushe/task/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    a = 0x1eL
    e = 0x5
    f = true
    g = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v0, "No data given to Notification Build Task"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "message_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "No message id given in Notification Build Task"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Ljava/lang/String;)Lco/ronash/pushe/h/a;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/a/l;
    :try_end_0
    .catch Lco/ronash/pushe/h/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lco/ronash/pushe/c/a/g;

    invoke-direct {v1, p1}, Lco/ronash/pushe/c/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/h/a/l;)V
    :try_end_1
    .catch Lco/ronash/pushe/f/a; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/ronash/pushe/h/c;->b(Landroid/content/Context;Lco/ronash/pushe/h/a;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Message not found in Notification Build Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Message ID"

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Invalid message given to Notification Build Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Message ID"

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_0
.end method
