.class public Lco/ronash/pushe/h/b/j;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 1

    new-instance v0, Lco/ronash/pushe/h/b/i;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/i;-><init>()V

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/j;->a(Lco/ronash/pushe/h/a;)V

    return-object v0
.end method

.method public b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;
    .locals 2

    new-instance v0, Lco/ronash/pushe/h/b/i;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/i;-><init>()V

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/j;->a(Lco/ronash/pushe/h/a;)V

    const-string/jumbo v1, "message_id"

    invoke-virtual {v0}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
