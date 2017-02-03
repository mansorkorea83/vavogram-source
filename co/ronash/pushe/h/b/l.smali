.class public Lco/ronash/pushe/h/b/l;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lco/ronash/pushe/h/b/k;
    .locals 3

    new-instance v0, Lco/ronash/pushe/e/i;

    invoke-direct {v0, p1}, Lco/ronash/pushe/e/i;-><init>(Landroid/content/Context;)V

    new-instance v1, Lco/ronash/pushe/e/k;

    invoke-direct {v1, p1}, Lco/ronash/pushe/e/k;-><init>(Landroid/content/Context;)V

    new-instance v2, Lco/ronash/pushe/e/h;

    invoke-direct {v2, p1}, Lco/ronash/pushe/e/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lco/ronash/pushe/h/b/l;->a(Landroid/content/Context;Lco/ronash/pushe/e/i;Lco/ronash/pushe/e/k;Lco/ronash/pushe/e/h;)Lco/ronash/pushe/h/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lco/ronash/pushe/e/i;Lco/ronash/pushe/e/k;Lco/ronash/pushe/e/h;)Lco/ronash/pushe/h/b/k;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lco/ronash/pushe/h/b/k;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/k;-><init>()V

    invoke-virtual {p2}, Lco/ronash/pushe/e/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->a(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p3}, Lco/ronash/pushe/e/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->e(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p3}, Lco/ronash/pushe/e/k;->b()Lco/ronash/pushe/e/l;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->a(Lco/ronash/pushe/h/b/k;Lco/ronash/pushe/e/l;)Lco/ronash/pushe/e/l;

    invoke-virtual {p3}, Lco/ronash/pushe/e/k;->a()Lco/ronash/pushe/e/m;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->a(Lco/ronash/pushe/h/b/k;Lco/ronash/pushe/e/m;)Lco/ronash/pushe/e/m;

    invoke-virtual {p3}, Lco/ronash/pushe/e/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->c(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p3}, Lco/ronash/pushe/e/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->b(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->f(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v2}, Lco/ronash/pushe/h/b/k;->d(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->a(Lco/ronash/pushe/h/b/k;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Getting application version failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 5

    new-instance v0, Lco/ronash/pushe/h/b/k;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/k;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/b/l;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "device_id"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->a(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "brand"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->b(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "model"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->c(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "app_version"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->d(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    const-string/jumbo v1, "av_code"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->a(Lco/ronash/pushe/h/b/k;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "os_version"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->e(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/k;->f(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Invalid value for app version code: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "av_code"

    invoke-virtual {p1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
