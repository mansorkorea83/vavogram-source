.class public Lco/ronash/pushe/h/b/s;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 5

    new-instance v1, Lco/ronash/pushe/h/b/r;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/r;-><init>()V

    invoke-virtual {p0, v1, p1}, Lco/ronash/pushe/h/b/s;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v0, "t16"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lco/ronash/pushe/k/d;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lco/ronash/pushe/h/b/r;->a(Ljava/util/List;)V

    :cond_1
    return-object v1
.end method

.method public a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/h/b/r;
    .locals 4

    new-instance v1, Lco/ronash/pushe/h/b/r;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/r;-><init>()V

    invoke-virtual {p0, v1}, Lco/ronash/pushe/h/b/s;->a(Lco/ronash/pushe/h/a;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lco/ronash/pushe/k/d;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {v1}, Lco/ronash/pushe/h/b/r;->a(Lco/ronash/pushe/h/b/r;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
