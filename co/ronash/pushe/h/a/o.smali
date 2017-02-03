.class Lco/ronash/pushe/h/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lco/ronash/pushe/h/a/n;


# direct methods
.method constructor <init>(Lco/ronash/pushe/h/a/n;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/o;->a:Lco/ronash/pushe/h/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lco/ronash/pushe/h/a/m;

    check-cast p2, Lco/ronash/pushe/h/a/m;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/m;->c()I

    move-result v0

    invoke-virtual {p2}, Lco/ronash/pushe/h/a/m;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/m;->c()I

    move-result v0

    invoke-virtual {p2}, Lco/ronash/pushe/h/a/m;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
