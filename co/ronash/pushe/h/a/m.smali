.class public Lco/ronash/pushe/h/a/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lco/ronash/pushe/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/a;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/m;->a:Lco/ronash/pushe/a/a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lco/ronash/pushe/h/a/m;->d:I

    return-void
.end method

.method public a(Lco/ronash/pushe/a/a;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/m;->a:Lco/ronash/pushe/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/m;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lco/ronash/pushe/h/a/m;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/m;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/h/a/m;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/h/a/m;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lco/ronash/pushe/k/l;
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v1, "btn_id"

    iget v2, p0, Lco/ronash/pushe/h/a/m;->e:I

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string/jumbo v1, "btn_order"

    iget v2, p0, Lco/ronash/pushe/h/a/m;->d:I

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string/jumbo v1, "big_content"

    iget-object v2, p0, Lco/ronash/pushe/h/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "btn_icon"

    iget-object v2, p0, Lco/ronash/pushe/h/a/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/h/a/m;->a:Lco/ronash/pushe/a/a;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "btn_action"

    iget-object v2, p0, Lco/ronash/pushe/h/a/m;->a:Lco/ronash/pushe/a/a;

    invoke-virtual {v2}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_0
    return-object v0
.end method
