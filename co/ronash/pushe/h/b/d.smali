.class public Lco/ronash/pushe/h/b/d;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/g;)Lco/ronash/pushe/h/b/c;
    .locals 1

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/d;->a(Ljava/lang/String;)Lco/ronash/pushe/h/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lco/ronash/pushe/h/b/c;
    .locals 1

    new-instance v0, Lco/ronash/pushe/h/b/c;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/c;-><init>()V

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/d;->a(Lco/ronash/pushe/h/a;)V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/h/b/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 1

    invoke-virtual {p0, p1}, Lco/ronash/pushe/h/b/d;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/c;
    .locals 2

    new-instance v0, Lco/ronash/pushe/h/b/c;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/c;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/b/d;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "orig_msg_id"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/b/c;->b(Ljava/lang/String;)V

    return-object v0
.end method
