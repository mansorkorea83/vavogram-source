.class public Lco/ronash/pushe/i/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    return-void
.end method

.method private c(Lco/ronash/pushe/h/b/o;)V
    .locals 3

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Lco/ronash/pushe/h/a;)V

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v1, "message_id"

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/h;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method private c(Lco/ronash/pushe/k/l;)V
    .locals 4

    new-instance v0, Lco/ronash/pushe/e/i;

    iget-object v1, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/e/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "instance_id"

    iget-object v2, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "android_id"

    invoke-virtual {v0}, Lco/ronash/pushe/e/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/b/o;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/f;->b(Lco/ronash/pushe/h/b/o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lco/ronash/pushe/k/o; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending Upstream Message failed in UpstreamSender.sendMessage() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Message ID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Message"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v4

    invoke-virtual {v4}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/f;->c(Lco/ronash/pushe/h/b/o;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lco/ronash/pushe/k/l;)V
    .locals 6

    const-string/jumbo v0, "message_id"

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/f;->b(Lco/ronash/pushe/k/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lco/ronash/pushe/k/o; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending Upstream Message failed in UpstreamSender.sendMessage() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Message ID"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "Message Type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "Refactored Upstream Message"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v0

    iget-object v2, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/h;

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Lco/ronash/pushe/h/b/o;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "$stats_send_attempts"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/i/f;->c(Lco/ronash/pushe/k/l;)V

    invoke-static {v0}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "Sending Upstream Message"

    new-instance v3, Lco/ronash/pushe/log/d;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Message ID"

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "Data"

    aput-object v5, v4, v9

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, "Size"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    iget-object v2, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v4}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v4

    invoke-virtual {v4}, Lco/ronash/pushe/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gcm.googleapis.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/d/d;->a()V

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lco/ronash/pushe/d/d;->a(Lco/ronash/pushe/h/b/o;)J

    const-string/jumbo v1, "Sent Upstream Message stored in DB"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v4, "Message ID"

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string/jumbo v4, "Size"

    aput-object v4, v3, v9

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "$stats_sent_messages"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lco/ronash/pushe/k/l;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "$stats_send_attempts"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/f;->c(Lco/ronash/pushe/k/l;)V

    invoke-static {p1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message_id"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Sending Upstream Message"

    new-instance v3, Lco/ronash/pushe/log/d;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Message ID"

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    const-string/jumbo v5, "Message Type"

    aput-object v5, v4, v9

    sget-object v5, Lco/ronash/pushe/h/b/p;->k:Lco/ronash/pushe/h/b/p;

    invoke-virtual {v5}, Lco/ronash/pushe/h/b/p;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string/jumbo v5, "Data"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "Size"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    iget-object v2, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v4}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v4

    invoke-virtual {v4}, Lco/ronash/pushe/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gcm.googleapis.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/d/d;->a()V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1, v1}, Lco/ronash/pushe/d/d;->a(Lco/ronash/pushe/k/l;Ljava/lang/String;)J

    const-string/jumbo v0, "Sent Upstream Message stored in DB"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Message ID"

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    const-string/jumbo v1, "Message Type "

    aput-object v1, v3, v9

    const-string/jumbo v1, "refactored upstream"

    aput-object v1, v3, v10

    const-string/jumbo v1, "Size"

    aput-object v1, v3, v11

    const/4 v1, 0x5

    invoke-virtual {p1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/i/f;->a:Landroid/content/Context;

    const-string/jumbo v1, "$stats_sent_messages"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
