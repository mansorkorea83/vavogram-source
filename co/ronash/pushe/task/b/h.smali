.class public Lco/ronash/pushe/task/b/h;
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
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v1, "No data given to UpstreamSendTask, possibly because of a clean data"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "message_id"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Ljava/lang/String;)Lco/ronash/pushe/h/a;
    :try_end_0
    .catch Lco/ronash/pushe/h/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v1, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a;->a()Lco/ronash/pushe/h/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lco/ronash/pushe/h/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Downstream message given for Upstream Send Task"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v2, "Invalid message id given for Upstream Send Task"

    new-instance v3, Lco/ronash/pushe/log/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Message ID"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    sget-object v1, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v3, Lco/ronash/pushe/i/f;

    invoke-direct {v3, p1}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    check-cast v0, Lco/ronash/pushe/h/b/o;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lco/ronash/pushe/i/f;->b(Lco/ronash/pushe/h/b/o;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lco/ronash/pushe/k/o; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lco/ronash/pushe/h/c;->b(Landroid/content/Context;Lco/ronash/pushe/h/a;)V

    sget-object v1, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending Upstream Message failed in UpstreamSendTask class- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method
