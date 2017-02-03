.class final Lco/ronash/pushe/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lco/ronash/pushe/c/a;

.field final synthetic c:Lco/ronash/pushe/h/a/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lco/ronash/pushe/c/a;Lco/ronash/pushe/h/a/g;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lco/ronash/pushe/f;->b:Lco/ronash/pushe/c/a;

    iput-object p3, p0, Lco/ronash/pushe/f;->c:Lco/ronash/pushe/h/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/g;

    invoke-direct {v1, p0}, Lco/ronash/pushe/g;-><init>(Lco/ronash/pushe/f;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method
