.class public Lco/ronash/pushe/h/b/e;
.super Lco/ronash/pushe/h/b/o;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/o;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/h/b/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lco/ronash/pushe/h/b/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lco/ronash/pushe/h/b/e;->a:Z

    return p1
.end method

.method static synthetic b(Lco/ronash/pushe/h/b/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/e;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    invoke-super {p0}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "t11"

    iget-boolean v2, p0, Lco/ronash/pushe/h/b/e;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/h/b/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ip"

    iget-object v2, p0, Lco/ronash/pushe/h/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lco/ronash/pushe/h/b/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "network_type"

    iget-object v2, p0, Lco/ronash/pushe/h/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public d()Lco/ronash/pushe/h/b/p;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b/p;->e:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
