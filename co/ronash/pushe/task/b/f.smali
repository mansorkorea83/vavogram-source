.class public Lco/ronash/pushe/task/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lco/ronash/pushe/i;->a(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lco/ronash/pushe/h/b/l;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/l;-><init>()V

    invoke-virtual {v1, p1}, Lco/ronash/pushe/h/b/l;->a(Landroid/content/Context;)Lco/ronash/pushe/h/b/k;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "Pushe"

    const-string/jumbo v3, "Trying to register to Pushe"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lco/ronash/pushe/k/l;

    invoke-direct {v2}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v3, "t10"

    invoke-virtual {v1}, Lco/ronash/pushe/h/b/k;->b()Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "token"

    invoke-virtual {v2, v1, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "message_id"

    invoke-static {}, Lco/ronash/pushe/h/b/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lco/ronash/pushe/i/f;

    invoke-direct {v0, p1}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lco/ronash/pushe/i/f;->b(Lco/ronash/pushe/k/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending Upstream Message failed in ServerRegisterTask class - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 4

    invoke-static {p1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->b()I

    move-result v0

    new-instance v1, Lco/ronash/pushe/c/a/k;

    invoke-direct {v1, p1}, Lco/ronash/pushe/c/a/k;-><init>(Landroid/content/Context;)V

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v1, "Invalid value for Sender Info Token State: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lco/ronash/pushe/c/a/k;->a()V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lco/ronash/pushe/task/b/f;->a(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
