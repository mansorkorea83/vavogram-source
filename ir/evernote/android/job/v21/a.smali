.class public Lcom/evernote/android/job/v21/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/evernote/android/job/l;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:La/a/a/a/c;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobProxy21"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/v21/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/r;)I
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Lcom/evernote/android/job/v21/b;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a()Landroid/app/job/JobScheduler;
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/v21/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/evernote/android/job/n;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/a;->d(Lcom/evernote/android/job/n;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/evernote/android/job/m;->a(Lcom/evernote/android/job/n;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/evernote/android/job/m;->b(Lcom/evernote/android/job/n;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/r;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v2, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    const-string/jumbo v3, "Schedule one-off jobInfo %s, %s, start %s, end %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    if-ne v0, v5, :cond_0

    const-string/jumbo v0, "success"

    :goto_1
    aput-object v0, v4, v1

    aput-object p1, v4, v5

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/m;->a(Lcom/evernote/android/job/n;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/evernote/android/job/m;->b(Lcom/evernote/android/job/n;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    invoke-virtual {v2, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "failure"

    goto :goto_1
.end method

.method public b(Lcom/evernote/android/job/n;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/a;->d(Lcom/evernote/android/job/n;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/r;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v2, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    const-string/jumbo v3, "Schedule periodic jobInfo %s, %s, interval %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    if-ne v0, v5, :cond_0

    const-string/jumbo v0, "success"

    :goto_1
    aput-object v0, v4, v1

    aput-object p1, v4, v5

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    invoke-virtual {v2, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "failure"

    goto :goto_1
.end method

.method public c(Lcom/evernote/android/job/n;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/evernote/android/job/v21/a;->a:La/a/a/a/c;

    invoke-virtual {v2, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected d(Lcom/evernote/android/job/n;)Landroid/app/job/JobInfo$Builder;
    .locals 5

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/evernote/android/job/v21/a;->b:Landroid/content/Context;

    const-class v4, Lcom/evernote/android/job/v21/PlatformJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v0
.end method
