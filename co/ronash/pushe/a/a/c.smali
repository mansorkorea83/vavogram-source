.class public Lco/ronash/pushe/a/a/c;
.super Lco/ronash/pushe/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/a/c;->f:Lco/ronash/pushe/a/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bazaar://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/a/a/c;->a:Ljava/lang/String;

    invoke-super {p0, p1}, Lco/ronash/pushe/a/a/n;->a(Landroid/content/Context;)V

    return-void
.end method
