.class public Lco/ronash/pushe/h/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/h/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lco/ronash/pushe/h/c;
    .locals 2

    sget-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    if-nez v0, :cond_1

    const-class v1, Lco/ronash/pushe/h/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/h/c;

    invoke-direct {v0}, Lco/ronash/pushe/h/c;-><init>()V

    sput-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lco/ronash/pushe/h/a;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "M##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lco/ronash/pushe/h/a;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, v4}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v1, "message_direction"

    invoke-virtual {v0, v1, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "Invalid message json when retrieving from message store: no message direction"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    invoke-static {v1}, Lco/ronash/pushe/h/b;->valueOf(Ljava/lang/String;)Lco/ronash/pushe/h/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "Invalid message json when retrieving from message store: no message type"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Invalid message direction when retrieving from message store"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Message Direction"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v4, Lco/ronash/pushe/h/b;->a:Lco/ronash/pushe/h/b;

    invoke-virtual {v2, v4}, Lco/ronash/pushe/h/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lco/ronash/pushe/h/a/h;->a(I)Lco/ronash/pushe/h/a/h;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Invalid message type when retrieving from message store"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Message Type"

    aput-object v5, v4, v6

    aput-object v3, v4, v7

    const-string/jumbo v3, "Message Direction"

    aput-object v3, v4, v8

    const/4 v3, 0x3

    aput-object v1, v4, v3

    invoke-direct {v2, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v2}, Lco/ronash/pushe/h/a/h;->b()Lco/ronash/pushe/h/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/a/i;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_5
    sget-object v1, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    invoke-virtual {v2, v1}, Lco/ronash/pushe/h/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lco/ronash/pushe/h/b/p;->a(I)Lco/ronash/pushe/h/b/p;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    const-string/jumbo v0, "Invalid message type when retrieving from message store"

    new-instance v1, Lco/ronash/pushe/log/d;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Message Type"

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v1}, Lco/ronash/pushe/h/b/p;->b()Lco/ronash/pushe/h/b/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/q;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;Lco/ronash/pushe/h/a;)V
    .locals 3

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Storing message without id"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "message_direction"

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->a()Lco/ronash/pushe/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/h/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "message_id"

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Lco/ronash/pushe/h/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string/jumbo v0, "Storing message without id"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "message_direction"

    sget-object v1, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    invoke-virtual {v1}, Lco/ronash/pushe/h/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "message_id"

    invoke-virtual {p2, v0, p3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p3}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lco/ronash/pushe/h/a;)V
    .locals 2

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Deleting message without id"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Lco/ronash/pushe/h/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    return-void
.end method
