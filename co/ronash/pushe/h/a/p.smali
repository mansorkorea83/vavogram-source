.class public Lco/ronash/pushe/h/a/p;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/d;)Ljava/util/List;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lco/ronash/pushe/k/d;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p2, v0}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v3

    new-instance v4, Lco/ronash/pushe/h/a/m;

    invoke-direct {v4}, Lco/ronash/pushe/h/a/m;-><init>()V

    const-string/jumbo v5, "btn_content"

    invoke-virtual {v3, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lco/ronash/pushe/h/a/m;->a(Ljava/lang/String;)V

    const-string/jumbo v5, "btn_order"

    invoke-virtual {v3, v5, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lco/ronash/pushe/h/a/m;->a(I)V

    const-string/jumbo v5, "btn_id"

    invoke-virtual {v3, v5}, Lco/ronash/pushe/k/l;->c(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lco/ronash/pushe/h/a/m;->b(I)V

    const-string/jumbo v5, "btn_icon"

    invoke-virtual {v3, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lco/ronash/pushe/h/a/m;->b(Ljava/lang/String;)V

    const-string/jumbo v5, "btn_action"

    invoke-virtual {v3, v5}, Lco/ronash/pushe/k/l;->e(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v3

    invoke-static {v3, p1}, Lco/ronash/pushe/h/a/n;->a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v3

    invoke-virtual {v4, v3}, Lco/ronash/pushe/h/a/m;->a(Lco/ronash/pushe/a/a;)V

    invoke-virtual {v4}, Lco/ronash/pushe/h/a/m;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lco/ronash/pushe/h/a/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v4}, Lco/ronash/pushe/h/a/m;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lco/ronash/pushe/h/a/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
