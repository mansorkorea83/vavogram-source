.class public Lnet/hockeyapp/android/metrics/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;
    }
.end annotation


# static fields
.field protected static final ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field protected static final LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong; = null

.field private static final LOCK:Ljava/lang/Object; = null

.field private static final SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer; = null

.field private static final TAG:Ljava/lang/String; = "HA-MetricsManager"

.field private static volatile instance:Lnet/hockeyapp/android/metrics/MetricsManager;

.field private static sChannel:Lnet/hockeyapp/android/metrics/Channel;

.field private static sSender:Lnet/hockeyapp/android/metrics/Sender;

.field private static sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

.field private static sWeakApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mSessionTrackingDisabled:Z

.field private mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x4e20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p2, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    if-nez p3, :cond_0

    new-instance p3, Lnet/hockeyapp/android/metrics/Sender;

    invoke-direct {p3}, Lnet/hockeyapp/android/metrics/Sender;-><init>()V

    :cond_0
    sput-object p3, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-nez p4, :cond_1

    new-instance p4, Lnet/hockeyapp/android/metrics/Persistence;

    invoke-direct {p4, p1, p3}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V

    :goto_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p4}, Lnet/hockeyapp/android/metrics/Sender;->setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V

    if-nez p5, :cond_2

    new-instance v0, Lnet/hockeyapp/android/metrics/Channel;

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-direct {v0, v1, p4}, Lnet/hockeyapp/android/metrics/Channel;-><init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    goto :goto_0

    :cond_2
    sput-object p5, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    goto :goto_1
.end method

.method static synthetic access$100()Lnet/hockeyapp/android/metrics/Channel;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/metrics/MetricsManager;)V
    .locals 0

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->updateSession()V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getApplication()Landroid/app/Application;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_0
    return-object v0
.end method

.method protected static getChannel()Lnet/hockeyapp/android/metrics/Channel;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method protected static getInstance()Lnet/hockeyapp/android/metrics/MetricsManager;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    return-object v0
.end method

.method protected static getSender()Lnet/hockeyapp/android/metrics/Sender;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-object v0
.end method

.method private static getTime()J
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;)V
    .locals 3

    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    return-void
.end method

.method protected static register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_1

    sget-object v8, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_3

    :try_start_1
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager;

    new-instance v2, Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-direct {v2, p0, p2}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/metrics/MetricsManager;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    :goto_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v1, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->setSessionTrackingDisabled(Ljava/lang/Boolean;)V

    :cond_0
    monitor-exit v8

    :cond_1
    return-void

    :cond_2
    move v1, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method private registerTelemetryLifecycleCallbacks()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_0

    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/MetricsManager$1;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    :cond_0
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static sessionTrackingEnabled()Z
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v0, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCustomServerURL(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/Sender;->setCustomServerURL(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "HockeyApp couldn\'t set the custom server url. Please register(...) the MetricsManager before setting the server URL."

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-void
.end method

.method public static setSessionTrackingDisabled(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "MetricsManager hasn\'t been registered. No Metrics will be collected!"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .locals 1

    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$1;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$1;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/model/SessionState;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private unregisterTelemetryLifecycleCallbacks()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    return-void
.end method

.method private updateSession()V
    .locals 10

    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "HA-MetricsManager"

    const-string/jumbo v7, "Starting & tracking session"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "HA-MetricsManager"

    const-string/jumbo v7, "Session management disabled by the developer"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v2

    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    sub-long v6, v2, v4

    sget-object v8, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v6, "HA-MetricsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Checking if we have to renew a session, time difference is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "HA-MetricsManager"

    const-string/jumbo v7, "Renewing session"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/TelemetryData;",
            ")",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Data;-><init>()V

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseData(Lnet/hockeyapp/android/metrics/model/Domain;)V

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/hockeyapp/android/metrics/model/Data;->QualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method protected renewSession()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->renewSessionContext(Ljava/lang/String;)V

    sget-object v1, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-direct {p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V

    return-void
.end method

.method protected setChannel(Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 0

    sput-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-void
.end method
