.class public abstract Lco/ronash/pushe/h/a/q;
.super Lco/ronash/pushe/h/a/g;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/g;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "otk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    :cond_0
    const-string/jumbo v1, "welcome"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Z)V

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string/jumbo v2, "otk"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string/jumbo v2, "otk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/q;->a:Z

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/h/a/q;->b:I

    return v0
.end method

.method public E()Z
    .locals 1

    invoke-virtual {p0}, Lco/ronash/pushe/h/a/q;->D()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "welcome"

    invoke-static {p1, v2}, Lco/ronash/pushe/h/a/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {p1}, Lco/ronash/pushe/h/a/q;->a(Landroid/content/Context;)V

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0}, Lco/ronash/pushe/h/a/q;->D()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lco/ronash/pushe/h/a/q;->b:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/q;->a:Z

    return-void
.end method
