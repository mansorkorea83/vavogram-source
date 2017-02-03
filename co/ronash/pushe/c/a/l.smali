.class Lco/ronash/pushe/c/a/l;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/k;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/k;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/c/a/l;->a:Lco/ronash/pushe/c/a/k;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lco/ronash/pushe/b/b;->values()[Lco/ronash/pushe/b/b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {}, Lco/ronash/pushe/b/a;->a()Lco/ronash/pushe/b/a;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lco/ronash/pushe/b/a;->b(Landroid/content/Context;Lco/ronash/pushe/b/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/b;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/a;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    return-void
.end method
