.class public Lco/ronash/pushe/h/b/a;
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

    iput-object p1, p0, Lco/ronash/pushe/h/b/a;->a:Ljava/util/List;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    iget-object v0, p0, Lco/ronash/pushe/h/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lco/ronash/pushe/h/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/h/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/k/l;

    invoke-virtual {v2, v1, v0}, Lco/ronash/pushe/k/d;->a(ILco/ronash/pushe/k/l;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "t17"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    return-object v0
.end method

.method public d()Lco/ronash/pushe/h/b/p;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b/p;->g:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
