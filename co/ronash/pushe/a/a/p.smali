.class public Lco/ronash/pushe/a/a/p;
.super Lco/ronash/pushe/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/a/c;->c:Lco/ronash/pushe/a/c;

    return-object v0
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    invoke-super {p0}, Lco/ronash/pushe/a/a/n;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "url"

    iget-object v2, p0, Lco/ronash/pushe/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
