.class public Lco/ronash/pushe/c/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string/jumbo v2, "$latest_registered_version"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Retrieving application package info failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/c;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/h/e;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v0, Lco/ronash/pushe/h/b/p;->c:Lco/ronash/pushe/h/b/p;

    invoke-virtual {p1}, Lco/ronash/pushe/h/e;->e()Lco/ronash/pushe/h/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/b/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->b()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lco/ronash/pushe/h/e;->d()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lco/ronash/pushe/i;->a(Landroid/content/Context;I)V

    const-string/jumbo v0, "Pushe"

    const-string/jumbo v1, "Successfully registered to pushe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/c/a/l;

    invoke-direct {v1, p0}, Lco/ronash/pushe/c/a/l;-><init>(Lco/ronash/pushe/c/a/k;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lco/ronash/pushe/h/e;->d()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/f;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/i;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i;->a(I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/f;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    :cond_1
    invoke-direct {p0}, Lco/ronash/pushe/c/a/k;->f()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i;->a(I)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const-string/jumbo v0, "broadcast"

    new-instance v1, Lco/ronash/pushe/j/c;

    iget-object v2, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/j/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/j/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/i;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lco/ronash/pushe/c/a/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/i;->a(Landroid/content/Context;)Lco/ronash/pushe/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/i;->c(Ljava/lang/String;)V

    return-object v0
.end method
