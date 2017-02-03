.class public Lco/ronash/pushe/h/e;
.super Lco/ronash/pushe/h/a;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lco/ronash/pushe/h/b/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/h/b;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b;->a:Lco/ronash/pushe/h/b;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lco/ronash/pushe/h/e;->a:I

    return-void
.end method

.method public a(Lco/ronash/pushe/h/b/p;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/e;->c:Lco/ronash/pushe/h/b/p;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/e;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/h/e;->a:I

    return v0
.end method

.method public e()Lco/ronash/pushe/h/b/p;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/e;->c:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
