.class public Lco/ronash/pushe/e/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/e/f;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lco/ronash/pushe/e/f;

    invoke-direct {v0}, Lco/ronash/pushe/e/f;-><init>()V

    const-string/jumbo v1, "package_name"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "ver"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "src"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "app_name"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->d(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "fit"

    const-string/jumbo v2, "0"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->a(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v1, "lut"

    const-string/jumbo v2, "0"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->b(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v1, "time"

    const-string/jumbo v2, "0"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->c(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v4, v5}, Lco/ronash/pushe/e/f;->a(J)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v0, v4, v5}, Lco/ronash/pushe/e/f;->b(J)V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->c(J)V

    goto :goto_2
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lco/ronash/pushe/e/f;->c:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/e/f;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/e/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/e/f;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "src"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Lco/ronash/pushe/e/f;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const-string/jumbo v1, "fit"

    iget-wide v2, p0, Lco/ronash/pushe/e/f;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v2, p0, Lco/ronash/pushe/e/f;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-string/jumbo v1, "lut"

    iget-wide v2, p0, Lco/ronash/pushe/e/f;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "app_name"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/e/f;->d:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/e/f;->b:Ljava/lang/String;

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/e/f;->g:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/e/f;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    return-void
.end method
