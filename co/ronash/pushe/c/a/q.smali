.class Lco/ronash/pushe/c/a/q;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/k/l;

.field final synthetic b:Lco/ronash/pushe/c/a/p;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/p;Lco/ronash/pushe/k/l;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/c/a/q;->b:Lco/ronash/pushe/c/a/p;

    iput-object p2, p0, Lco/ronash/pushe/c/a/q;->a:Lco/ronash/pushe/k/l;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lco/ronash/pushe/i/f;

    invoke-direct {v0, p1}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/q;->a:Lco/ronash/pushe/k/l;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    return-void
.end method
