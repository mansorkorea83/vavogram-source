.class public Lco/ronash/pushe/h/b/h;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lco/ronash/pushe/h/b/g;
    .locals 1

    new-instance v0, Lco/ronash/pushe/h/b/g;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/g;-><init>()V

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/h;->a(Lco/ronash/pushe/h/a;)V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/h/b/g;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lco/ronash/pushe/h/b/g;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lco/ronash/pushe/h/b/g;->a(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 3

    new-instance v1, Lco/ronash/pushe/h/b/g;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/g;-><init>()V

    invoke-virtual {p0, v1, p1}, Lco/ronash/pushe/h/b/h;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v0, "orig_msg_id"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/g;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/g;->c(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "btn_id"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/g;->a(Ljava/lang/Integer;)V

    return-object v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
