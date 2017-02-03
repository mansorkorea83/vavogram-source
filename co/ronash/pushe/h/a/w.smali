.class public Lco/ronash/pushe/h/a/w;
.super Lco/ronash/pushe/h/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/g;
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Lco/ronash/pushe/h/a/v;

    invoke-direct {v2}, Lco/ronash/pushe/h/a/v;-><init>()V

    invoke-virtual {p0, v2, p1}, Lco/ronash/pushe/h/a/w;->a(Lco/ronash/pushe/h/a/g;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v0, "subscribe_to"

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v3

    const-string/jumbo v0, "unsubscribe_from"

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lco/ronash/pushe/k/d;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    new-instance v7, Lco/ronash/pushe/j/a;

    invoke-virtual {v3, v0}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lco/ronash/pushe/j/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v4}, Lco/ronash/pushe/k/d;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v0, Lco/ronash/pushe/j/a;

    invoke-virtual {v4, v1}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lco/ronash/pushe/j/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Lco/ronash/pushe/h/a/v;->a(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lco/ronash/pushe/h/a/v;->b(Ljava/util/List;)V

    return-object v2
.end method
