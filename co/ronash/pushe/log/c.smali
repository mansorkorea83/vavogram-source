.class public Lco/ronash/pushe/log/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lco/ronash/pushe/log/d;

.field private b:Lco/ronash/pushe/log/f;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/Object;

.field private f:Ljava/lang/Throwable;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lco/ronash/pushe/log/c;
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/log/c;->g:J

    return-object p0
.end method

.method public a(Lco/ronash/pushe/log/d;)Lco/ronash/pushe/log/c;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/log/c;->a:Lco/ronash/pushe/log/d;

    return-object p0
.end method

.method public a(Lco/ronash/pushe/log/f;)Lco/ronash/pushe/log/c;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/log/c;->b:Lco/ronash/pushe/log/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lco/ronash/pushe/log/c;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/log/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/log/c;->f:Ljava/lang/Throwable;

    return-object p0
.end method

.method public a([Ljava/lang/Object;)Lco/ronash/pushe/log/c;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/log/c;->e:[Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lco/ronash/pushe/log/f;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/c;->b:Lco/ronash/pushe/log/f;

    if-nez v0, :cond_0

    sget-object v0, Lco/ronash/pushe/log/f;->b:Lco/ronash/pushe/log/f;

    iput-object v0, p0, Lco/ronash/pushe/log/c;->b:Lco/ronash/pushe/log/f;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/log/c;->b:Lco/ronash/pushe/log/f;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lco/ronash/pushe/log/c;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/log/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lco/ronash/pushe/log/d;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/c;->a:Lco/ronash/pushe/log/d;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/log/d;

    invoke-direct {v0}, Lco/ronash/pushe/log/d;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/log/c;->a:Lco/ronash/pushe/log/d;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/log/c;->a:Lco/ronash/pushe/log/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lco/ronash/pushe/log/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lco/ronash/pushe/log/c;->a()Lco/ronash/pushe/log/f;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/log/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[%c%s] %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x2

    invoke-virtual {p0}, Lco/ronash/pushe/log/c;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/log/c;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/log/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lco/ronash/pushe/log/c;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/log/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/c;->e:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lco/ronash/pushe/log/c;->e:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/log/c;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lco/ronash/pushe/log/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lco/ronash/pushe/log/c;->e()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lco/ronash/pushe/log/c;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lco/ronash/pushe/log/c;->g:J

    return-wide v0
.end method

.method public h()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/c;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public i()Lco/ronash/pushe/log/c;
    .locals 1

    new-instance v0, Lco/ronash/pushe/log/a;

    invoke-direct {v0}, Lco/ronash/pushe/log/a;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/log/c;->f:Ljava/lang/Throwable;

    return-object p0
.end method
