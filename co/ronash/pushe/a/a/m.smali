.class public Lco/ronash/pushe/a/a/m;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .locals 3

    new-instance v0, Lco/ronash/pushe/a/a/k;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/k;-><init>()V

    const-string/jumbo v1, "dl_url"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/a/a/k;->a(Lco/ronash/pushe/a/a/k;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
