.class Lco/ronash/pushe/task/scheduler/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Lco/ronash/pushe/task/scheduler/b/a;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lco/ronash/pushe/task/scheduler/b/a;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lco/ronash/pushe/task/scheduler/b/c;->a:Lco/ronash/pushe/task/scheduler/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/scheduler/b/b;

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/scheduler/b/c;->a(Lco/ronash/pushe/task/scheduler/b/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lco/ronash/pushe/task/scheduler/b/b;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/scheduler/b/b;

    return-object v0
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/scheduler/b/b;

    iget-object v2, p0, Lco/ronash/pushe/task/scheduler/b/c;->a:Lco/ronash/pushe/task/scheduler/b/a;

    invoke-static {v2}, Lco/ronash/pushe/task/scheduler/b/a;->b(Lco/ronash/pushe/task/scheduler/b/a;)Lco/ronash/pushe/d/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/ronash/pushe/d/f;->a(Lco/ronash/pushe/task/scheduler/b/b;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/task/scheduler/b/b;->c(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lco/ronash/pushe/task/scheduler/b/b;)V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public b(Lco/ronash/pushe/task/scheduler/b/b;)V
    .locals 4

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->a:Lco/ronash/pushe/task/scheduler/b/a;

    invoke-static {v0}, Lco/ronash/pushe/task/scheduler/b/a;->b(Lco/ronash/pushe/task/scheduler/b/a;)Lco/ronash/pushe/d/f;

    move-result-object v0

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/d/f;->b(J)I

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
