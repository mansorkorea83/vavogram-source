.class public Lco/ronash/pushe/a/a/e;
.super Lco/ronash/pushe/a/a;


# instance fields
.field private a:Lco/ronash/pushe/k/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/a/a/e;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/a/a/e;->a:Lco/ronash/pushe/k/l;

    return-object p1
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lco/ronash/pushe/activities/PopupDialogActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/a/a/e;->a:Lco/ronash/pushe/k/l;

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "co.ronash.pushe.OPEN_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .locals 2

    invoke-super {p0}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/a/a/e;->a:Lco/ronash/pushe/k/l;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/l;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
