.class Lco/ronash/pushe/i/c;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a;

.field final synthetic b:Lco/ronash/pushe/h/a/g;

.field final synthetic c:Lco/ronash/pushe/i/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/i/a;Lco/ronash/pushe/c/a;Lco/ronash/pushe/h/a/g;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/i/c;->c:Lco/ronash/pushe/i/a;

    iput-object p2, p0, Lco/ronash/pushe/i/c;->a:Lco/ronash/pushe/c/a;

    iput-object p3, p0, Lco/ronash/pushe/i/c;->b:Lco/ronash/pushe/h/a/g;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/i/c;->a:Lco/ronash/pushe/c/a;

    iget-object v1, p0, Lco/ronash/pushe/i/c;->b:Lco/ronash/pushe/h/a/g;

    invoke-interface {v0, v1}, Lco/ronash/pushe/c/a;->a(Lco/ronash/pushe/h/a/g;)V

    return-void
.end method
