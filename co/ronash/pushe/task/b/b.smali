.class public Lco/ronash/pushe/task/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    c = 0x5265c00L
    f = true
.end annotation

.annotation runtime Lco/ronash/pushe/task/a/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string/jumbo v0, "FlushDB task is running..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i/e;->a(Z)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method
