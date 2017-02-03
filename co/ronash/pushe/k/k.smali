.class public Lco/ronash/pushe/k/k;
.super Lco/ronash/pushe/k/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lco/ronash/pushe/h/a/l;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/ronash/pushe/h/a/l;I)V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/k/i;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    iput p3, p0, Lco/ronash/pushe/k/k;->c:I

    return-void
.end method

.method private a(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    const/high16 v4, 0x800

    iget-object v0, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v1

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->e()Lco/ronash/pushe/a/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lco/ronash/pushe/k/k;->a(Lco/ronash/pushe/a/a;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v2

    invoke-virtual {p0}, Lco/ronash/pushe/k/k;->b()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private b(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lco/ronash/pushe/k/k;->g(Landroid/support/v4/app/NotificationCompat$Builder;)V

    :goto_1
    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lco/ronash/pushe/k/k;->d()Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_7
    invoke-direct {p0}, Lco/ronash/pushe/k/k;->c()Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v0

    goto :goto_2
.end method

.method private c()Landroid/support/v4/app/NotificationCompat$Style;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    :goto_0
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    :goto_1
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto :goto_1
.end method

.method private c(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v3}, Lco/ronash/pushe/h/a/l;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v1, Lco/ronash/pushe/R$drawable;->ic_pushe:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    :goto_1
    if-eqz v0, :cond_7

    new-instance v0, Lco/ronash/pushe/i/d;

    invoke-direct {v0}, Lco/ronash/pushe/i/d;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string/jumbo v1, "Downloading custom_notification large image icon failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v3}, Lco/ronash/pushe/h/a/l;->A()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v3}, Lco/ronash/pushe/h/a/l;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->A()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[- ]"

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    :goto_2
    iget-object v2, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "ic_silhouette"

    const-string/jumbo v4, "drawable"

    iget-object v5, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_5

    if-lez v2, :cond_5

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_7
    return-void
.end method

.method private d()Landroid/support/v4/app/NotificationCompat$Style;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    :cond_0
    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    :cond_1
    new-instance v1, Lco/ronash/pushe/i/d;

    invoke-direct {v1}, Lco/ronash/pushe/i/d;-><init>()V

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string/jumbo v1, "Downloading custom_notification big icon failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    :cond_3
    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string/jumbo v1, "Downloading custom_notification image failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    :cond_5
    return-object v0
.end method

.method private d(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->q()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->q()I

    move-result v0

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->r()I

    move-result v1

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->s()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private e(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->m()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/a/m;

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lco/ronash/pushe/k/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "ic_empty"

    const-string/jumbo v4, "drawable"

    iget-object v5, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_2
    iget-object v3, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-static {}, Lco/ronash/pushe/k/a;->a()I

    move-result v4

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->a()Lco/ronash/pushe/a/a;

    move-result-object v5

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lco/ronash/pushe/k/k;->a(Lco/ronash/pushe/a/a;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private f(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private g(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lco/ronash/pushe/R$layout;->custom_notification:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lco/ronash/pushe/i/d;

    invoke-direct {v1}, Lco/ronash/pushe/i/d;-><init>()V

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/i/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lco/ronash/pushe/f/a;

    const-string/jumbo v1, "Downloading custom_notification big icon failed"

    invoke-direct {v0, v1}, Lco/ronash/pushe/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v2, Lco/ronash/pushe/R$id;->notif_bkgrnd_image:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/k;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/k;->b(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/k;->c(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/k;->d(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/k;->e(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/k/k;->f(Landroid/support/v4/app/NotificationCompat$Builder;)V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lco/ronash/pushe/a/a;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v1}, Lco/ronash/pushe/h/a/l;->e()Lco/ronash/pushe/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "action"

    invoke-virtual {p1}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_0
    const-string/jumbo v1, "notification_id"

    iget v2, p0, Lco/ronash/pushe/k/k;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "orig_msg_id"

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "response_action"

    const-string/jumbo v2, "clicked"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "btn_id"

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/e;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected b()Landroid/content/Intent;
    .locals 3

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string/jumbo v1, "notification_id"

    iget v2, p0, Lco/ronash/pushe/k/k;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "orig_msg_id"

    iget-object v2, p0, Lco/ronash/pushe/k/k;->b:Lco/ronash/pushe/h/a/l;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "response_action"

    const-string/jumbo v2, "dismissed"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/k/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/e;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
