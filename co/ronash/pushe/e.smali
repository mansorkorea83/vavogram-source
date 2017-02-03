.class Lco/ronash/pushe/e;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/Pushe;


# direct methods
.method constructor <init>(Lco/ronash/pushe/Pushe;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/e;->a:Lco/ronash/pushe/Pushe;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lco/ronash/pushe/c/a/j;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/j;->a()V

    return-void
.end method
