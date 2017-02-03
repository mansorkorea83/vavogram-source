.class public Lco/ronash/pushe/a/a/f;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .locals 2

    new-instance v0, Lco/ronash/pushe/a/a/e;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/e;-><init>()V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1, p1}, Lco/ronash/pushe/k/l;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/a/a/e;->a(Lco/ronash/pushe/a/a/e;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    return-object v0
.end method
