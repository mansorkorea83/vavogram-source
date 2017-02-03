.class public Lco/ronash/pushe/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/g;)V
    .locals 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v0

    const-string/jumbo v1, "t17"

    iget-object v2, p0, Lco/ronash/pushe/c/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/e/g;->a(Landroid/content/Context;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    return-void
.end method
