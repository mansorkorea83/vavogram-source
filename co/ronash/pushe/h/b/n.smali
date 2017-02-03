.class public Lco/ronash/pushe/h/b/n;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;)Lco/ronash/pushe/h/b/m;
    .locals 1

    new-instance v0, Lco/ronash/pushe/h/b/m;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/m;-><init>()V

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/n;->a(Lco/ronash/pushe/h/a;)V

    invoke-virtual {v0, p2}, Lco/ronash/pushe/h/b/m;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 5

    new-instance v1, Lco/ronash/pushe/h/b/m;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/m;-><init>()V

    invoke-virtual {p0, v1, p1}, Lco/ronash/pushe/h/b/n;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v0, "t14"

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

    invoke-static {v4}, Lco/ronash/pushe/e/f;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/e/f;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lco/ronash/pushe/h/b/m;->a(Ljava/util/List;)V

    :cond_1
    return-object v1
.end method
