.class public Lorg/telegram/messenger/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# static fields
.field public static appLocked:Z

.field public static autoLockIn:I

.field public static blockedUsersLoaded:Z

.field public static contactsHash:Ljava/lang/String;

.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public static draftsLoaded:Z

.field public static isWaitingForPasscodeEnter:Z

.field public static lastBroadcastId:I

.field public static lastContactsSyncTime:I

.field public static lastHintsSyncTime:I

.field public static lastLocalId:I

.field public static lastPauseTime:I

.field public static lastSendMessageId:I

.field public static lastUpdateVersion:Ljava/lang/String;

.field public static migrateOffsetAccess:J

.field public static migrateOffsetChannelId:I

.field public static migrateOffsetChatId:I

.field public static migrateOffsetDate:I

.field public static migrateOffsetId:I

.field public static migrateOffsetUserId:I

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static pushString:Ljava/lang/String;

.field public static registeredForPush:Z

.field public static saveIncomingPhotos:Z

.field private static final sync:Ljava/lang/Object;

.field public static useFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, -0x33450

    const/4 v1, -0x1

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    sput v2, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    sput v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 9

    const/4 v4, 0x0

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-nez v5, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x10

    :try_start_0
    new-array v5, v5, [B

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearConfig()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const v0, -0x33450

    sput v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    sput v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x14370

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method public static getClientUserId()I
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNewMessageId()I
    .locals 3

    sget-object v2, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    sget v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isClientActivated()Z
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadConfig()V
    .locals 16

    sget-object v11, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v12, "user.dat"

    invoke-direct {v0, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    :try_start_1
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v0}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    const/4 v10, 0x0

    invoke-static {v2, v1, v10}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    sput v10, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/UserConfig$1;

    invoke-direct {v12, v0}, Lorg/telegram/messenger/UserConfig$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const v12, -0x33450

    if-le v10, v12, :cond_2

    const v10, -0x33450

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    :cond_2
    sget v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const v12, -0x33450

    if-le v10, v12, :cond_3

    const v10, -0x33450

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/UserConfig$2;

    invoke-direct {v12, v0}, Lorg/telegram/messenger/UserConfig$2;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_4
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    const/4 v10, 0x0

    invoke-static {v2, v1, v10}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "userconfing"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v10, "registeredForPush"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string/jumbo v10, "pushString2"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    const-string/jumbo v10, "lastSendMessageId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const-string/jumbo v10, "lastLocalId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const-string/jumbo v10, "contactsHash"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const-string/jumbo v10, "saveIncomingPhotos"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_4
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    :cond_5
    :try_start_5
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "userconfing"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v10, "registeredForPush"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string/jumbo v10, "pushString2"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    const-string/jumbo v10, "lastSendMessageId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const-string/jumbo v10, "lastLocalId"

    const v12, -0x33450

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const-string/jumbo v10, "contactsHash"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    const-string/jumbo v10, "saveIncomingPhotos"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    const-string/jumbo v10, "lastBroadcastId"

    const/4 v12, -0x1

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const-string/jumbo v10, "blockedUsersLoaded"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    const-string/jumbo v10, "passcodeHash1"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    const-string/jumbo v10, "appLocked"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    const-string/jumbo v10, "passcodeType"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const-string/jumbo v10, "autoLockIn"

    const/16 v12, 0xe10

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const-string/jumbo v10, "lastPauseTime"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    const-string/jumbo v10, "useFingerprint"

    const/4 v12, 0x1

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    const-string/jumbo v10, "lastUpdateVersion2"

    const-string/jumbo v12, "3.5"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    const-string/jumbo v10, "lastContactsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    const v13, 0x14370

    sub-int/2addr v12, v13

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    const-string/jumbo v10, "lastHintsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    const v13, 0x15f90

    sub-int/2addr v12, v13

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    const-string/jumbo v10, "draftsLoaded"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    const-string/jumbo v10, "migrateOffsetId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sget v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_6

    const-string/jumbo v10, "migrateOffsetDate"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    const-string/jumbo v10, "migrateOffsetUserId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    const-string/jumbo v10, "migrateOffsetChatId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    const-string/jumbo v10, "migrateOffsetChannelId"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    const-string/jumbo v10, "migrateOffsetAccess"

    const-wide/16 v12, 0x0

    invoke-interface {v5, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    sput-wide v12, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    :cond_6
    const-string/jumbo v10, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v10, 0x0

    invoke-static {v6, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v7}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    const/4 v12, 0x0

    invoke-static {v2, v10, v12}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_7
    const-string/jumbo v10, "passcodeSalt"

    const-string/jumbo v12, ""

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    sput-object v10, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    new-array v10, v10, [B

    sput-object v10, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public static saveConfig(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    return-void
.end method

.method public static saveConfig(ZLjava/io/File;)V
    .locals 10

    sget-object v6, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "userconfing"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "registeredForPush"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "pushString2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastSendMessageId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastLocalId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "contactsHash"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "saveIncomingPhotos"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastBroadcastId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "blockedUsersLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "passcodeHash1"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "passcodeSalt"

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-lez v5, :cond_3

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "appLocked"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "passcodeType"

    sget v7, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "autoLockIn"

    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastPauseTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastUpdateVersion2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastContactsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "useFingerprint"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "lastHintsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "draftsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "migrateOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    const-string/jumbo v5, "migrateOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "migrateOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "migrateOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "migrateOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "migrateOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_4

    if-eqz p0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo v5, ""

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
