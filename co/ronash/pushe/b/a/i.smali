.class public Lco/ronash/pushe/b/a/i;
.super Lco/ronash/pushe/b/a/e;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    c = 0xa4cb800L
.end annotation

.annotation runtime Lco/ronash/pushe/task/a/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lco/ronash/pushe/k/h;

    invoke-direct {v0}, Lco/ronash/pushe/k/h;-><init>()V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/k/h;->a(Landroid/content/Context;)Lco/ronash/pushe/k/d;

    move-result-object v0

    const-string/jumbo v1, "t16"

    invoke-virtual {p0, p1, v0, v1}, Lco/ronash/pushe/b/a/i;->a(Landroid/content/Context;Lco/ronash/pushe/k/d;Ljava/lang/String;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method
