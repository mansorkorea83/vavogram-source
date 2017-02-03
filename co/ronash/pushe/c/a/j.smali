.class public Lco/ronash/pushe/c/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/c/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/h/a/g;)V
    .locals 3

    new-instance v0, Lco/ronash/pushe/h/b/f;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/f;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/c/a/j;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/h/b/f;->a(Landroid/content/Context;Z)Lco/ronash/pushe/h/b/e;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/i/f;

    iget-object v2, p0, Lco/ronash/pushe/c/a/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/h/b/o;)V

    return-void
.end method
