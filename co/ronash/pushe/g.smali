.class Lco/ronash/pushe/g;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/f;


# direct methods
.method constructor <init>(Lco/ronash/pushe/f;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/g;->a:Lco/ronash/pushe/f;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/g;->a:Lco/ronash/pushe/f;

    iget-object v0, v0, Lco/ronash/pushe/f;->b:Lco/ronash/pushe/c/a;

    iget-object v1, p0, Lco/ronash/pushe/g;->a:Lco/ronash/pushe/f;

    iget-object v1, v1, Lco/ronash/pushe/f;->c:Lco/ronash/pushe/h/a/g;

    invoke-interface {v0, v1}, Lco/ronash/pushe/c/a;->a(Lco/ronash/pushe/h/a/g;)V

    return-void
.end method
