.class public Lco/ronash/pushe/c/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/g;)V
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/h;

    invoke-direct {v0}, Lco/ronash/pushe/k/h;-><init>()V

    new-instance v1, Lco/ronash/pushe/h/b/s;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/s;-><init>()V

    iget-object v2, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lco/ronash/pushe/k/h;->a(Landroid/content/Context;)Lco/ronash/pushe/k/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/s;->a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/h/b/r;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/i/f;

    iget-object v2, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/h/b/o;)V

    return-void
.end method
