.class Lco/ronash/pushe/i/b;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/h/e;

.field final synthetic b:Lco/ronash/pushe/i/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/i/a;Lco/ronash/pushe/h/e;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/i/b;->b:Lco/ronash/pushe/i/a;

    iput-object p2, p0, Lco/ronash/pushe/i/b;->a:Lco/ronash/pushe/h/e;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/i/b;->a:Lco/ronash/pushe/h/e;

    invoke-virtual {v0}, Lco/ronash/pushe/h/e;->e()Lco/ronash/pushe/h/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/h/b/p;->c()Lco/ronash/pushe/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lco/ronash/pushe/i/b;->b:Lco/ronash/pushe/i/a;

    invoke-static {v1}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/i/a;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lco/ronash/pushe/c/d;->b(Landroid/content/Context;)Lco/ronash/pushe/c/c;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/i/b;->a:Lco/ronash/pushe/h/e;

    invoke-interface {v0, v1}, Lco/ronash/pushe/c/c;->a(Lco/ronash/pushe/h/e;)V

    :cond_0
    return-void
.end method
