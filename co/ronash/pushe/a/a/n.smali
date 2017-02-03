.class public Lco/ronash/pushe/a/a/n;
.super Lco/ronash/pushe/a/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/List;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/a;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/a/c;->e:Lco/ronash/pushe/a/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lco/ronash/pushe/a/a/n;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-direct {p0, p1, v3}, Lco/ronash/pushe/a/a/n;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const/high16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "Intent action could not be resolved"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Action"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "Data"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lco/ronash/pushe/a/a/n;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "Categories"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_1
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    invoke-super {p0}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lco/ronash/pushe/a/a/n;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lco/ronash/pushe/a/a/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v1, Lco/ronash/pushe/k/d;

    iget-object v2, p0, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Lco/ronash/pushe/k/d;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "category"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    :cond_2
    iget-object v1, p0, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v1, Lco/ronash/pushe/k/d;

    iget-object v2, p0, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Lco/ronash/pushe/k/d;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "resolvers"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    :cond_3
    return-object v0
.end method
