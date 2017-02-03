.class public Lco/ronash/pushe/h/a/v;
.super Lco/ronash/pushe/h/a/g;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/v;->a:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/v;->b:Ljava/util/List;

    return-void
.end method

.method public d()Lco/ronash/pushe/h/a/h;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/a/h;->b:Lco/ronash/pushe/h/a/h;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/v;->a:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/v;->b:Ljava/util/List;

    return-object v0
.end method
