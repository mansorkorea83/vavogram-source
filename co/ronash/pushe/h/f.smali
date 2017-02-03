.class public Lco/ronash/pushe/h/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/e;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    new-instance v1, Lco/ronash/pushe/h/e;

    invoke-direct {v1}, Lco/ronash/pushe/h/e;-><init>()V

    const-string/jumbo v2, "message_id"

    invoke-virtual {p1, v2, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/e;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "Missing status in response"

    aput-object v4, v3, v7

    new-instance v4, Lco/ronash/pushe/log/d;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "Message ID"

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lco/ronash/pushe/h/e;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lco/ronash/pushe/h/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/e;->b(Ljava/lang/String;)V

    :try_start_1
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    invoke-static {v2}, Lco/ronash/pushe/h/b/p;->a(I)Lco/ronash/pushe/h/b/p;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "Response received for invalid message type"

    aput-object v2, v1, v7

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "Message Type"

    aput-object v4, v3, v7

    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "Invalid status in response"

    aput-object v4, v3, v7

    new-instance v4, Lco/ronash/pushe/log/d;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Status"

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    const-string/jumbo v2, "Message ID"

    aput-object v2, v5, v9

    const/4 v2, 0x3

    invoke-virtual {v1}, Lco/ronash/pushe/h/e;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/e;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "Invalid Message Type for Response message: %s"

    aput-object v2, v1, v7

    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/e;->a(Lco/ronash/pushe/h/b/p;)V

    move-object v0, v1

    goto :goto_1
.end method
