.class public abstract Lco/ronash/pushe/h/a/g;
.super Lco/ronash/pushe/h/a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/h/b;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b;->a:Lco/ronash/pushe/h/b;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/g;->a:Z

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    invoke-super {p0}, Lco/ronash/pushe/h/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lco/ronash/pushe/h/a/g;->d()Lco/ronash/pushe/h/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/h;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "request_delivery"

    iget-boolean v2, p0, Lco/ronash/pushe/h/a/g;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract d()Lco/ronash/pushe/h/a/h;
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/g;->a:Z

    return v0
.end method
