.class public Lco/ronash/pushe/a/a/k;
.super Lco/ronash/pushe/a/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/a/a/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/a/a/k;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/a/c;->h:Lco/ronash/pushe/a/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lco/ronash/pushe/a/a/l;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/l;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lco/ronash/pushe/a/a/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    invoke-super {p0}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "dl_url"

    iget-object v2, p0, Lco/ronash/pushe/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
