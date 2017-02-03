.class public Lco/ronash/pushe/h/b/m;
.super Lco/ronash/pushe/h/b/o;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/m;->a:Ljava/util/List;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    new-instance v1, Lco/ronash/pushe/k/d;

    invoke-direct {v1}, Lco/ronash/pushe/k/d;-><init>()V

    iget-object v0, p0, Lco/ronash/pushe/h/b/m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/h/b/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/e/f;

    invoke-virtual {v0}, Lco/ronash/pushe/e/f;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v2, "t14"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    return-object v0
.end method

.method public d()Lco/ronash/pushe/h/b/p;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b/p;->d:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
