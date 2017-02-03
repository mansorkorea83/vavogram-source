.class public Lcom/evernote/android/job/v14/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/evernote/android/job/l;


# static fields
.field private static final a:La/a/a/a/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobProxy14"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/v14/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Z)I
    .locals 1

    const/high16 v0, 0x800

    if-nez p1, :cond_0

    const/high16 v0, 0x4800

    :cond_0
    return v0
.end method

.method protected a()Landroid/app/AlarmManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "AlarmManager is null"

    invoke-virtual {v0, v1}, La/a/a/a/c;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    return-object v0
.end method

.method protected a(II)Landroid/app/PendingIntent;
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/evernote/android/job/n;I)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/evernote/android/job/n;Z)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/n;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/evernote/android/job/n;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/n;Z)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/m;->c(Lcom/evernote/android/job/n;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/n;JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled alarm, %s, delay %s, exact %b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/evernote/android/job/m;->c(Lcom/evernote/android/job/n;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/evernote/android/job/n;JLandroid/app/PendingIntent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/n;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(Lcom/evernote/android/job/n;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/n;Z)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    sget-object v0, Lcom/evernote/android/job/v14/a;->a:La/a/a/a/c;

    const-string/jumbo v2, "Scheduled repeating alarm, %s, interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/evernote/android/job/n;)Z
    .locals 1

    const/high16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/n;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
