.class public Lco/ronash/pushe/h/a/f;
.super Lco/ronash/pushe/h/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/g;
    .locals 2

    new-instance v0, Lco/ronash/pushe/h/a/e;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/e;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/a/f;->a(Lco/ronash/pushe/h/a/g;Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1, p1}, Lco/ronash/pushe/k/l;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/e;->a(Lco/ronash/pushe/h/a/e;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    return-object v0
.end method
