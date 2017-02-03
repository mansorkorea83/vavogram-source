.class public Lorg/telegram/tgnet/ConnectionsManager;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"


# static fields
.field public static final ConnectionStateConnected:I = 0x3

.field public static final ConnectionStateConnecting:I = 0x1

.field public static final ConnectionStateUpdating:I = 0x4

.field public static final ConnectionStateWaitingForNetwork:I = 0x2

.field public static final ConnectionTypeDownload:I = 0x2

.field public static final ConnectionTypeDownload2:I = 0x10002

.field public static final ConnectionTypeGeneric:I = 0x1

.field public static final ConnectionTypePush:I = 0x8

.field public static final ConnectionTypeUpload:I = 0x4

.field public static final DEFAULT_DATACENTER_ID:I = 0x7fffffff

.field private static volatile Instance:Lorg/telegram/tgnet/ConnectionsManager; = null

.field public static final RequestFlagCanCompress:I = 0x4

.field public static final RequestFlagEnableUnauthorized:I = 0x1

.field public static final RequestFlagFailOnServerErrors:I = 0x2

.field public static final RequestFlagForceDownload:I = 0x20

.field public static final RequestFlagInvokeAfter:I = 0x40

.field public static final RequestFlagNeedQuickAck:I = 0x80

.field public static final RequestFlagTryDifferentDc:I = 0x10

.field public static final RequestFlagWithoutLogin:I = 0x8


# instance fields
.field private appPaused:Z

.field private connectionState:I

.field private isUpdating:Z

.field private lastClassGuid:I

.field private lastPauseTime:J

.field private lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    iput-boolean v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    iput v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    iput-boolean v5, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getConnectionState()I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/ConnectionsManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/tgnet/ConnectionsManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/tgnet/ConnectionsManager;)I
    .locals 1

    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/tgnet/ConnectionsManager;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/tgnet/ConnectionsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/tgnet/ConnectionsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    return p1
.end method

.method private checkConnection()V
    .locals 1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->useIpv6Address()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUseIpv6(Z)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setNetworkAvailable(Z)V

    return-void
.end method

.method public static getInstance()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 4

    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    if-nez v0, :cond_1

    const-class v3, Lorg/telegram/tgnet/ConnectionsManager;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    if-nez v0, :cond_0

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    :try_start_2
    monitor-exit v3

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static isConnectedToWiFi()Z
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNetworkOnline()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isRoaming()Z
    .locals 5

    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static native native_applyDatacenterAddress(ILjava/lang/String;I)V
.end method

.method public static native native_bindRequestToGuid(II)V
.end method

.method public static native native_cancelRequest(IZ)V
.end method

.method public static native native_cancelRequestsForGuid(I)V
.end method

.method public static native native_cleanUp()V
.end method

.method public static native native_getConnectionState()I
.end method

.method public static native native_getCurrentTime()I
.end method

.method public static native native_getCurrentTimeMillis()J
.end method

.method public static native native_getTimeDifference()I
.end method

.method public static native native_init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public static native native_pauseNetwork()V
.end method

.method public static native native_resumeNetwork(Z)V
.end method

.method public static native native_sendRequest(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;IIIZI)V
.end method

.method public static native native_setJava(Z)V
.end method

.method public static native native_setNetworkAvailable(Z)V
.end method

.method public static native native_setPushConnectionEnabled(Z)V
.end method

.method public static native native_setUseIpv6(Z)V
.end method

.method public static native native_setUserId(I)V
.end method

.method public static native native_switchBackend()V
.end method

.method public static native native_updateDcSettings()V
.end method

.method public static onConnectionStateChanged(I)V
    .locals 1

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$7;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$7;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onInternalPushReceived()V
    .locals 1

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$10;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$10;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onLogout()V
    .locals 1

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$8;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$8;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onSessionCreated()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$6;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager$6;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onUnparsedMessageReceived(I)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "tmessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "java received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/tgnet/ConnectionsManager$3;

    invoke-direct {v3}, Lorg/telegram/tgnet/ConnectionsManager$3;-><init>()V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/tgnet/ConnectionsManager$4;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/ConnectionsManager$4;-><init>(Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onUpdate()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$5;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager$5;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onUpdateConfig(I)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lorg/telegram/tgnet/TLRPC$TL_config;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/tgnet/ConnectionsManager$9;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/ConnectionsManager$9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static useIpv6Address()Z
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v10, 0x0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-ge v11, v12, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_6

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "tmessages"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "valid interface: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "tmessages"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "address: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "tmessages"

    const-string/jumbo v12, "address is good"

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_7
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v6}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    instance-of v11, v6, Ljava/net/Inet6Address;

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    instance-of v11, v6, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "192.0.0."

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_b
    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public applyCountryPortNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public applyDatacenterAddress(ILjava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDatacenterAddress(ILjava/lang/String;I)V

    return-void
.end method

.method public bindRequestToGuid(II)V
    .locals 0

    invoke-static {p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_bindRequestToGuid(II)V

    return-void
.end method

.method public cancelRequest(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequest(IZ)V

    return-void
.end method

.method public cancelRequestsForGuid(I)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequestsForGuid(I)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_cleanUp()V

    return-void
.end method

.method public generateClassGuid()I
    .locals 2

    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    return v0
.end method

.method public getConnectionState()I
    .locals 2

    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    goto :goto_0
.end method

.method public getCurrentTime()I
    .locals 1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTime()I

    move-result v0

    return v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPauseTime()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    return-wide v0
.end method

.method public getTimeDifference()I
    .locals 1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getTimeDifference()I

    move-result v0

    return v0
.end method

.method public init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    invoke-static/range {p1 .. p11}, Lorg/telegram/tgnet/ConnectionsManager;->native_init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$2;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$2;-><init>(Lorg/telegram/tgnet/ConnectionsManager;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public resumeNetworkMaybe()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(Z)V

    return-void
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I
    .locals 8

    const/4 v3, 0x0

    const v5, 0x7fffffff

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I
    .locals 8

    const/4 v6, 0x1

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I
    .locals 11

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getSendTyping()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAppPaused(ZZ)V
    .locals 6

    const-wide/16 v4, 0x0

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    const-string/jumbo v0, "tmessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "app paused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_pauseNetwork()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "reset app pause time"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkContacts()V

    :cond_4
    iput-wide v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(Z)V

    goto :goto_0
.end method

.method public setIsUpdating(Z)V
    .locals 1

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$11;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPushConnectionEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setPushConnectionEnabled(Z)V

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUserId(I)V

    return-void
.end method

.method public switchBackend()V
    .locals 0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_switchBackend()V

    return-void
.end method

.method public updateDcSettings()V
    .locals 0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_updateDcSettings()V

    return-void
.end method
