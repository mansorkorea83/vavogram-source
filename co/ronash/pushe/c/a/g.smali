.class public Lco/ronash/pushe/c/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lco/ronash/pushe/c/a/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/c/a/g;->b:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/16 v4, 0x1e0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v0, ""

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    const-string/jumbo v0, "-m"

    :cond_0
    :goto_0
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Notification Icon url for this device "

    new-instance v3, Lco/ronash/pushe/log/d;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "density"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string/jumbo v5, "Icon url"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-object v0

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_2

    const-string/jumbo v0, "-h"

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-gt v2, v3, :cond_3

    const-string/jumbo v0, "-xh"

    goto :goto_0

    :cond_3
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v2, v4, :cond_4

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v2, v4, :cond_0

    :cond_4
    const-string/jumbo v0, "-xxh"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lco/ronash/pushe/c/a/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/g;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lco/ronash/pushe/h/a/h;->a:Lco/ronash/pushe/h/a/h;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/g;->d()Lco/ronash/pushe/h/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t30"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/g;->d()Lco/ronash/pushe/h/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lco/ronash/pushe/h/a/l;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lco/ronash/pushe/c/a/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/l;->h(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "notif_off"

    invoke-virtual {v0, v1, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p0, p1}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/h/a/l;)V
    :try_end_0
    .catch Lco/ronash/pushe/f/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lco/ronash/pushe/c/a/g;->b(Lco/ronash/pushe/h/a/l;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Lco/ronash/pushe/h/a;)V

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v1, "message_id"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "First attempt at loading notification failed, scheduling task"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/d;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    goto :goto_1
.end method

.method public a(Lco/ronash/pushe/h/a/l;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/d/d;->a()V

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->d()Lco/ronash/pushe/h/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/h;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;I)J

    :cond_0
    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v1

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lco/ronash/pushe/k/i;->a(Landroid/content/Context;Lco/ronash/pushe/h/a/l;I)Lco/ronash/pushe/k/i;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/k/i;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lco/ronash/pushe/c/a/h;

    invoke-direct {v0, p0}, Lco/ronash/pushe/c/a/h;-><init>(Lco/ronash/pushe/c/a/g;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lco/ronash/pushe/c/a/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/k/p;->a(Landroid/content/Context;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ignoring duplicate notification with MessageID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public b(Lco/ronash/pushe/h/a/l;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "co.ronash.pushe.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->x()Lco/ronash/pushe/k/l;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Invoking custom message handler"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Custom Message"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->x()Lco/ronash/pushe/k/l;

    move-result-object v5

    invoke-virtual {v5}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->x()Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "json"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "bigTitle"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "content"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "bigContent"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ticker"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "imageUrl"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "iconUrl"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/l;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "messageContent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
