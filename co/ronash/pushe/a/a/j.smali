.class public Lco/ronash/pushe/a/a/j;
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

    new-instance v0, Lco/ronash/pushe/a/a/i;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/i;-><init>()V

    const-string/jumbo v1, "url"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/a/a/i;->a(Lco/ronash/pushe/a/a/i;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "dl_url"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/a/a/i;->b(Lco/ronash/pushe/a/a/i;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
