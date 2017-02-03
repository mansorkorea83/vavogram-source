.class public Lcom/evernote/android/job/gcm/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/evernote/android/job/l;


# static fields
.field private static final a:La/a/a/a/c;


# instance fields
.field private final b:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobProxyGcm"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/r;)I
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Lcom/evernote/android/job/gcm/b;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/a;->b(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public a(Lcom/evernote/android/job/n;)V
    .locals 7

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/evernote/android/job/m;->a(Lcom/evernote/android/job/n;)J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-static {p1}, Lcom/evernote/android/job/m;->b(Lcom/evernote/android/job/n;)J

    move-result-wide v2

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/a;->d(Lcom/evernote/android/job/n;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v4

    const-class v5, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/evernote/android/job/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled OneoffTask, %s, start %s, end %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p1}, Lcom/evernote/android/job/m;->a(Lcom/evernote/android/job/n;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/m;->b(Lcom/evernote/android/job/n;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected b(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/evernote/android/job/n;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/a;->d(Lcom/evernote/android/job/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    const-class v1, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/evernote/android/job/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled PeriodicTask, %s, interval %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/evernote/android/job/n;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d(Lcom/evernote/android/job/n;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/gcm/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
