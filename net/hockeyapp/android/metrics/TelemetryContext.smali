.class Lnet/hockeyapp/android/metrics/TelemetryContext;
.super Ljava/lang/Object;
.source "TelemetryContext.java"


# static fields
.field private static final SESSION_IS_FIRST_KEY:Ljava/lang/String; = "SESSION_IS_FIRST"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "HOCKEY_APP_TELEMETRY_CONTEXT"

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private final IKEY_LOCK:Ljava/lang/Object;

.field protected final mApplication:Lnet/hockeyapp/android/metrics/model/Application;

.field protected mContext:Landroid/content/Context;

.field protected final mDevice:Lnet/hockeyapp/android/metrics/model/Device;

.field private mInstrumentationKey:Ljava/lang/String;

.field protected final mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

.field private mPackageName:Ljava/lang/String;

.field protected final mSession:Lnet/hockeyapp/android/metrics/model/Session;

.field private mSettings:Landroid/content/SharedPreferences;

.field protected final mUser:Lnet/hockeyapp/android/metrics/model/User;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    new-instance v0, Lnet/hockeyapp/android/metrics/model/Device;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Device;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    new-instance v0, Lnet/hockeyapp/android/metrics/model/Session;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Session;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    new-instance v0, Lnet/hockeyapp/android/metrics/model/User;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/User;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    new-instance v0, Lnet/hockeyapp/android/metrics/model/Application;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Application;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    new-instance v0, Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Internal;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>()V

    const-string/jumbo v0, "HOCKEY_APP_TELEMETRY_CONTEXT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->convertAppIdentifierToGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configDeviceContext()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configUserId()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configInternalContext()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configApplicationContext()V

    return-void
.end method


# virtual methods
.method protected configApplicationContext()V
    .locals 10

    const-string/jumbo v6, "HockeyApp-Metrics"

    const-string/jumbo v7, "Configuring application context"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "unknown"

    const-string/jumbo v6, ""

    iput-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    :cond_0
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "%s (%S)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v4, "4.0.1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "android:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v6, "HockeyApp-Metrics"

    const-string/jumbo v7, "Could not get application context"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    throw v6
.end method

.method protected configDeviceContext()V
    .locals 3

    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "Configuring device context"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsVersion(Ljava/lang/String;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsName(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceOemName(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLocale(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLanguage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    sget-object v1, Lnet/hockeyapp/android/Constants;->DEVICE_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Phone"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Emulator]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v2}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "Tablet"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configInternalContext()V
    .locals 3

    const-string/jumbo v0, "4.0.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method protected configSessionContext(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "Configuring session context"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSessionId(Ljava/lang/String;)V

    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "Setting the isNew-flag to true, as we only count new sessions"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsNewSession(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "SESSION_IS_FIRST"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SESSION_IS_FIRST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "It\'s our first session, writing true to SharedPreferences."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "false"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "It\'s not their first session, writing false to SharedPreferences."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configUserId()V
    .locals 2

    const-string/jumbo v0, "HockeyApp-Metrics"

    const-string/jumbo v1, "Configuring user context"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Using pre-supplied anonymous device identifier."

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAnonymousUserId(Ljava/lang/String;)V

    return-void
.end method

.method public getAnonymousUserId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Application;->getVer()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getContextTags()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Application;->addToHashMap(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Device;->addToHashMap(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Session;->addToHashMap(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/User;->addToHashMap(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Internal;->addToHashMap(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceOemName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOemName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsFirstSession()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsFirst()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsNewSession()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsNew()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getLanguage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsLocale()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getLocale()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOs()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Internal;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected renewSessionContext(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configSessionContext(Ljava/lang/String;)V

    return-void
.end method

.method public setAnonymousUserId(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/User;->setId(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Application;->setVer(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setId(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setModel(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceOemName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOemName(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setType(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setInstrumentationKey(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFirstSession(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsFirst(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsNewSession(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsNew(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsLanguage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLanguage(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsLocale(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLocale(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOs(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOsVersion(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setScreenResolution(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->setSdkVersion(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setId(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateScreenResolution()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Deprecation"
        }
    .end annotation

    iget-object v10, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_1

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v3, v7, Landroid/graphics/Point;->y:I

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setScreenResolution(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xd

    if-lt v10, v11, :cond_2

    :try_start_0
    const-class v10, Landroid/view/Display;

    const-string/jumbo v11, "getRawWidth"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-class v10, Landroid/view/Display;

    const-string/jumbo v11, "getRawHeight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v3, v7, Landroid/graphics/Point;->y:I

    const-string/jumbo v10, "HockeyApp-Metrics"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t determine screen resolution: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    goto/16 :goto_0
.end method
