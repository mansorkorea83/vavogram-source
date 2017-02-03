.class public abstract Lco/ronash/pushe/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lco/ronash/pushe/a/c;
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v1, "action_type"

    invoke-virtual {p0}, Lco/ronash/pushe/a/a;->a()Lco/ronash/pushe/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
