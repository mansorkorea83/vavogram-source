.class public Lorg/telegram/messenger/SendMessagesHelper;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/SendMessagesHelper;


# instance fields
.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private delayedMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private sendingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field private unsentMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/SendMessagesHelper$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SendMessagesHelper;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 2

    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method private static fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 16

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v13, 0x12

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    :cond_0
    const/16 v13, 0x13

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    :cond_1
    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v13, v14

    const/high16 v14, 0x447a

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    :cond_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x11

    if-lt v13, v14, :cond_3

    const/16 v13, 0x18

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iput v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    const/4 v5, 0x1

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v6, v7

    :cond_5
    :goto_1
    if-nez v5, :cond_6

    :try_start_3
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x447a

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/16 v13, 0x5a

    if-eq v11, v13, :cond_8

    const/16 v13, 0x10e

    if-ne v11, v13, :cond_3

    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    move-object/from16 v0, p1

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v6, v7

    :goto_3
    :try_start_5
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v3

    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_1

    :catchall_0
    move-exception v13

    :goto_4
    if-eqz v6, :cond_9

    :try_start_7
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_5
    throw v13

    :catch_3
    move-exception v3

    const-string/jumbo v14, "tmessages"

    invoke-static {v14, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v3

    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v13

    move-object v6, v7

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_3
.end method

.method public static getInstance()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 4

    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    if-nez v0, :cond_1

    const-class v3, Lorg/telegram/messenger/SendMessagesHelper;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    if-nez v0, :cond_0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;
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

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :goto_1
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_2
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v3, :cond_4

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v5, "file"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eqz v3, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "jpg"

    invoke-virtual {v3, v4, v5, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_4
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-ne v3, v7, :cond_e

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_b

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v3, :cond_a

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v1, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_9

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    invoke-virtual {v3, v1, v6, v6, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    goto :goto_1

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v1, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_d

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    invoke-virtual {v3, v1, v7, v6, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_e
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v5, "gif"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_13

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_10

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    :goto_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v3, :cond_12

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_11

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_10
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    goto :goto_2

    :cond_11
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_12
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v3, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_13
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_14

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v3, :cond_14

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v3, v4, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_0

    :cond_14
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_15
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_16

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method private performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 7

    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$9;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$10;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/SendMessagesHelper$10;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    or-int/lit8 v1, v1, 0x44

    invoke-virtual {v6, p1, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$13;-><init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$15;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$15;-><init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/util/HashMap;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->no_webpage:Z

    if-nez v2, :cond_3

    const/4 v6, 0x1

    :goto_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz v0, :cond_5

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v0, :cond_6

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    if-eqz v0, :cond_0

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->phone_number:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->first_name:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->last_name:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public static prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V
    .locals 8

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V

    goto :goto_0
.end method

.method private static prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 32

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v30

    const/4 v11, 0x0

    if-eqz p2, :cond_6

    const/16 v22, 0x0

    if-eqz p3, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :cond_4
    if-nez v22, :cond_5

    const-string/jumbo v22, "txt"

    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-nez v2, :cond_b

    const/16 v28, 0x1

    :goto_1
    if-nez v28, :cond_c

    const/4 v10, 0x1

    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v21, ""

    const/16 v2, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_9

    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_a
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    if-eqz v28, :cond_18

    const/16 v2, 0x20

    shr-long v2, p4, v2

    long-to-int v0, v2

    move/from16 v26, v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v20

    if-nez v20, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v28, 0x0

    goto :goto_1

    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    :cond_d
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_17

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    :goto_3
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    if-nez v2, :cond_e

    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    :cond_e
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    if-nez v2, :cond_f

    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    :cond_f
    if-eqz p1, :cond_10

    if-eqz v11, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10
    :goto_4
    const/16 v18, 0x0

    if-nez v28, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v28, :cond_1a

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v18, :cond_11

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v28, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v28, :cond_1b

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v6, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    :cond_11
    if-nez v18, :cond_15

    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v11, :cond_12

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "image/webp"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x42b4

    const/high16 v7, 0x42b4

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v15

    if-eqz v15, :cond_13

    const-string/jumbo v2, "animation.gif"

    move-object/from16 v0, v25

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    const/high16 v2, 0x42b4

    const/high16 v3, 0x42b4

    const/16 v6, 0x37

    move/from16 v0, v28

    invoke-static {v15, v2, v3, v6, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_13
    :goto_8
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v10, :cond_14

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v24, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v17

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v0, v3, v1, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_14

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    const-string/jumbo v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_15

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    :cond_15
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_16

    const-string/jumbo v2, "originalPath"

    move-object/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    move-object/from16 v4, v18

    move-object/from16 v5, p0

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$12;

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_17
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;-><init>()V

    goto/16 :goto_3

    :cond_18
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    goto/16 :goto_3

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_1a
    const/4 v2, 0x4

    goto/16 :goto_5

    :cond_1b
    const/4 v2, 0x4

    goto/16 :goto_6

    :cond_1c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1d

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1d
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1e
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    :catch_0
    move-exception v19

    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_1
    move-exception v19

    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9
.end method

.method public static prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$14;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$18;

    move-wide v2, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper$18;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$16;

    invoke-direct {v1, p1, p2, p0, p3}, Lorg/telegram/messenger/SendMessagesHelper$16;-><init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingText(Ljava/lang/String;J)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$17;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$17;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 15

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$19;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p1

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/SendMessagesHelper$19;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendLocation(Landroid/location/Location;)V
    .locals 9

    const/4 v5, 0x0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v43, 0x0

    if-eqz p17, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    :cond_2
    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v54, -0x1

    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v34, v0

    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v30, v0

    const/16 v32, 0x0

    const/16 v16, 0x0

    if-eqz v34, :cond_3

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v48

    :goto_1
    const/16 v49, 0x0

    if-nez v34, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    if-nez v16, :cond_5

    if-eqz p14, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    :cond_3
    const/16 v48, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    if-eqz v25, :cond_10

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_10

    const/16 v32, 0x1

    :cond_5
    :goto_2
    if-eqz p14, :cond_1c

    :try_start_0
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v38, v0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v54, 0x4

    :cond_6
    :goto_3
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_7
    if-eqz p17, :cond_9

    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v16, :cond_41

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_8

    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    :cond_8
    :goto_4
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_9
    move-object/from16 v0, p17

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-eqz p14, :cond_a

    move-object/from16 v0, p14

    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    if-nez v4, :cond_c

    :cond_a
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_43

    if-eqz v32, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_42

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x8000

    or-int/2addr v4, v6

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :cond_c
    :goto_5
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move-wide/from16 v0, p8

    move-object/from16 v2, v38

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    if-eqz p11, :cond_d

    if-eqz v16, :cond_44

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_44

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :goto_6
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    :cond_d
    if-eqz p16, :cond_e

    if-nez v16, :cond_e

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move-object/from16 v0, p16

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_e
    if-eqz v34, :cond_51

    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_45

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v29

    move-object/from16 v12, v40

    :goto_7
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    if-eqz v12, :cond_f

    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    :cond_f
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_2

    :cond_11
    :try_start_1
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_14

    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_13

    :goto_8
    const/16 v54, 0x0

    :cond_12
    :goto_9
    if-eqz p17, :cond_6

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v54, 0x9

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p1, v0

    goto :goto_8

    :cond_14
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_15

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p2, v0

    const/16 v54, 0x1

    goto :goto_9

    :cond_15
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p3, v0

    const/16 v54, 0x2

    goto :goto_9

    :cond_16
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_17

    if-eqz p4, :cond_18

    :cond_17
    const/16 v54, 0x3

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    goto :goto_9

    :cond_18
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_19

    new-instance v55, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v55 .. v55}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v55

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v54, 0x6

    move-object/from16 p5, v55

    goto/16 :goto_9

    :cond_19
    :try_start_3
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1b

    :cond_1a
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    const/16 v54, 0x7

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    const/16 v54, 0x8

    goto/16 :goto_9

    :cond_1c
    if-eqz p1, :cond_25

    if-eqz v16, :cond_21

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_21

    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v38, v39

    :goto_a
    if-eqz p15, :cond_1d

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p15

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    :cond_1d
    if-eqz v16, :cond_1e

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_22

    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 p12, v41

    :cond_1e
    :goto_b
    if-nez p12, :cond_23

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :goto_c
    if-eqz p17, :cond_24

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v54, 0x9

    :goto_d
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_1f
    :goto_e
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_20

    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_20
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v32, :cond_40

    if-eqz v48, :cond_40

    move-object/from16 v0, v48

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    :goto_f
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_3

    :cond_21
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v38, v39

    goto/16 :goto_a

    :cond_22
    const/16 p12, 0x0

    goto :goto_b

    :cond_23
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_c

    :cond_24
    const/16 v54, 0x0

    goto :goto_d

    :cond_25
    if-eqz p2, :cond_28

    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_26

    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v38, v39

    :goto_10
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p17, :cond_27

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/16 v54, 0x9

    goto/16 :goto_e

    :cond_26
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v38, v39

    goto :goto_10

    :cond_27
    const/16 v54, 0x1

    goto/16 :goto_e

    :cond_28
    if-eqz p3, :cond_2d

    if-eqz v16, :cond_29

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_29

    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v38, v39

    :goto_11
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_12
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p17, :cond_2b

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v54, 0x9

    :goto_13
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p10, :cond_2c

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_e

    :cond_29
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v38, v39

    goto :goto_11

    :cond_2a
    const-string/jumbo v4, ""

    goto :goto_12

    :cond_2b
    const/16 v54, 0x2

    goto :goto_13

    :cond_2c
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v33, v0

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_e

    :cond_2d
    if-eqz p7, :cond_2e

    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    const-string/jumbo v4, ""

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p17, :cond_cd

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    if-eqz v4, :cond_cd

    const/16 v54, 0x9

    move-object/from16 v38, v39

    goto/16 :goto_e

    :cond_2e
    if-eqz p5, :cond_33

    if-eqz v16, :cond_31

    :try_start_5
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_31

    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v38, v39

    :goto_14
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_2f

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :cond_2f
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_30

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_30
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p17, :cond_32

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const/16 v54, 0x9

    goto/16 :goto_e

    :cond_31
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v38, v39

    goto :goto_14

    :cond_32
    const/16 v54, 0x6

    goto/16 :goto_e

    :cond_33
    if-eqz p6, :cond_1f

    if-eqz v16, :cond_34

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_34

    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v38, v39

    :goto_15
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_35

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_16
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p17, :cond_36

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/16 v54, 0x9

    :goto_17
    if-nez p4, :cond_3a

    const-string/jumbo v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :goto_18
    if-eqz v16, :cond_3b

    move-object/from16 v0, p6

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_3b

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :goto_19
    if-eqz v16, :cond_1f

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v20, 0x0

    :goto_1a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1f

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_3f

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-ge v4, v6, :cond_3c

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_34
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v38, v39

    goto/16 :goto_15

    :cond_35
    const-string/jumbo v4, ""

    goto/16 :goto_16

    :cond_36
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_37

    if-eqz p4, :cond_38

    :cond_37
    const/16 v54, 0x3

    goto/16 :goto_17

    :cond_38
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/16 v54, 0x8

    goto/16 :goto_17

    :cond_39
    const/16 v54, 0x7

    goto/16 :goto_17

    :cond_3a
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_18

    :cond_3b
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_19

    :cond_3c
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;-><init>()V

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->alt:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_3e

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_3d

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3d

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v37

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto/16 :goto_e

    :cond_3d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_e

    :cond_3e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_e

    :cond_3f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1a

    :cond_40
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_f

    :cond_41
    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_4

    :cond_42
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_c

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_5

    :cond_43
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_5

    :cond_44
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    :cond_45
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, v44

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v45

    if-eqz v45, :cond_46

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :catch_1
    move-exception v29

    move-object/from16 v49, v50

    move-object/from16 v12, v40

    goto/16 :goto_7

    :cond_47
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v34

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v49, v50

    :cond_48
    :goto_1c
    if-eqz v16, :cond_49

    :try_start_7
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_4a

    :cond_49
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_4a

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_4a

    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_4a
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v38

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-nez v4, :cond_4c

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    if-eqz p4, :cond_4c

    :cond_4b
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    const/4 v4, 0x1

    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    :cond_4c
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v42

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_4d

    if-eqz v48, :cond_4d

    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send message user_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " chat_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " channel_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " access_hash = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    if-eqz v54, :cond_4e

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_66

    if-eqz p1, :cond_66

    if-eqz v16, :cond_66

    :cond_4e
    if-nez v16, :cond_5f

    if-eqz v49, :cond_59

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :goto_1d
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_58

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v20, v20, 0x1

    goto :goto_1d

    :cond_4f
    :try_start_9
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-lez v34, :cond_48

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    if-nez v51, :cond_50

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    :cond_50
    move-object/from16 v0, v51

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_48

    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1c

    :cond_51
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_53

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_1e
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_48

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_55

    const/16 v28, 0x0

    const/16 v20, 0x0

    :goto_1f
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_52

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_54

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    :cond_52
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_1c

    :cond_53
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1e

    :cond_54
    add-int/lit8 v20, v20, 0x1

    goto :goto_1f

    :cond_55
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/16 v28, 0x0

    const/16 v20, 0x0

    :goto_20
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_56

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_57

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    :cond_56
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1c

    :cond_57
    add-int/lit8 v20, v20, 0x1

    goto :goto_20

    :cond_58
    :try_start_a
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    move-object/from16 v0, v49

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v29

    goto/16 :goto_7

    :cond_59
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    if-nez p14, :cond_5e

    const/4 v4, 0x1

    :goto_21
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_5a

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    :cond_5a
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    if-eqz p11, :cond_5b

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    :cond_5b
    if-nez p13, :cond_5c

    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    :cond_5c
    if-eqz p15, :cond_5d

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5d

    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    :cond_5d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    if-nez p14, :cond_0

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    :cond_5e
    const/4 v4, 0x0

    goto :goto_21

    :cond_5f
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_63

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    if-eqz p15, :cond_60

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_60
    if-eqz p11, :cond_61

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_61

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_61
    :goto_22
    if-eqz p17, :cond_62

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_62

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_62
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    if-eqz p12, :cond_65

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_65

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :goto_23
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    if-nez p14, :cond_0

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    :cond_63
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_64

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto :goto_22

    :cond_64
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_22

    :cond_65
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_23

    :cond_66
    const/4 v4, 0x1

    move/from16 v0, v54

    if-lt v0, v4, :cond_67

    const/4 v4, 0x3

    move/from16 v0, v54

    if-le v0, v4, :cond_69

    :cond_67
    const/4 v4, 0x5

    move/from16 v0, v54

    if-lt v0, v4, :cond_68

    const/16 v4, 0x8

    move/from16 v0, v54

    if-le v0, v4, :cond_69

    :cond_68
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_c4

    if-eqz v16, :cond_c4

    :cond_69
    if-nez v16, :cond_96

    const/16 v31, 0x0

    const/16 v27, 0x0

    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_6c

    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_6b

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    :goto_24
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    :cond_6a
    :goto_25
    if-eqz v49, :cond_89

    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :goto_26
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_86

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_26

    :cond_6b
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    goto :goto_24

    :cond_6c
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_6d

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_74

    if-eqz p3, :cond_74

    :cond_6d
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_72

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_6e

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_27
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    if-eqz p17, :cond_70

    const-string/jumbo v4, "masks"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    if-eqz v35, :cond_70

    new-instance v52, Lorg/telegram/tgnet/SerializedData;

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v4, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    const/16 v20, 0x0

    :goto_28
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_6f

    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, v52

    invoke-static {v0, v6, v8}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_28

    :cond_6e
    const-string/jumbo v4, ""

    goto :goto_27

    :cond_6f
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_70
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    if-eqz p10, :cond_71

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_71

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_25

    :cond_71
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_25

    :cond_72
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_73

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_29
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    move-object/from16 v31, v36

    goto/16 :goto_25

    :cond_73
    const-string/jumbo v4, ""

    goto :goto_29

    :cond_74
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_79

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_77

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_75

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    :goto_2a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_76

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2b
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_25

    :cond_75
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    goto :goto_2a

    :cond_76
    const-string/jumbo v4, ""

    goto :goto_2b

    :cond_77
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_78

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    move-object/from16 v31, v36

    goto/16 :goto_25

    :cond_78
    const-string/jumbo v4, ""

    goto :goto_2c

    :cond_79
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_7a

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_25

    :cond_7a
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_7b

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_82

    :cond_7b
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_80

    if-nez v16, :cond_7d

    if-eqz v43, :cond_7d

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7d

    const-string/jumbo v4, "http"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    if-eqz p17, :cond_7d

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    const-string/jumbo v4, "url"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7c

    move-object/from16 v0, v31

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;->url:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    :cond_7c
    :goto_2d
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7f

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2e
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_25

    :cond_7d
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_7e

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_7e

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    :goto_2f
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2d

    :cond_7e
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    goto :goto_2f

    :cond_7f
    const-string/jumbo v4, ""

    goto :goto_2e

    :cond_80
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_81

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_30
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    move-object/from16 v31, v36

    goto/16 :goto_25

    :cond_81
    const-string/jumbo v4, ""

    goto :goto_30

    :cond_82
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_6a

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_84

    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_83

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_31
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_25

    :cond_83
    const-string/jumbo v4, ""

    goto :goto_31

    :cond_84
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_85

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_32
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    move-object/from16 v31, v36

    goto/16 :goto_25

    :cond_85
    const-string/jumbo v4, ""

    goto :goto_32

    :cond_86
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    const-string/jumbo v4, ""

    move-object/from16 v0, v47

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    if-eqz v27, :cond_87

    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    :cond_87
    move-object/from16 v7, v47

    if-nez p14, :cond_88

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    :cond_88
    :goto_33
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_8d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_89
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_8a

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v47

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    :cond_8a
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v47

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    if-eqz p11, :cond_8b

    move-object/from16 v0, v47

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    :cond_8b
    if-eqz v27, :cond_8c

    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    :cond_8c
    move-object/from16 v7, v47

    goto :goto_33

    :cond_8d
    const/4 v4, 0x2

    move/from16 v0, v54

    if-ne v0, v4, :cond_8f

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8e

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_8e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8f
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_91

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_90

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_90
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_91
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_92

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_92
    const/4 v4, 0x7

    move/from16 v0, v54

    if-ne v0, v4, :cond_94

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_93

    if-eqz v27, :cond_93

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_93
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_94
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_95

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_95
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_96
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_9b

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    if-eqz p15, :cond_97

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_97

    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_97
    if-eqz p11, :cond_98

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_98

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_98
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :goto_34
    if-eqz p17, :cond_99

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_99

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_99
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    const-string/jumbo v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_9e

    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_9d

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_9d

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    :goto_35
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    :cond_9a
    :goto_36
    if-nez p14, :cond_0

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    :cond_9b
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_9c

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto/16 :goto_34

    :cond_9c
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_34

    :cond_9d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_35

    :cond_9e
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_9f

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_a6

    if-eqz p3, :cond_a6

    :cond_9f
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static/range {v53 .. v53}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_a2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a0

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_37
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v53

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a1

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v53

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    :goto_38
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_a5

    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz p10, :cond_a4

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a4

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_36

    :cond_a0
    const-string/jumbo v4, ""

    goto/16 :goto_37

    :cond_a1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_38

    :cond_a2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a3

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    move-object/from16 v0, v53

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_38

    :cond_a3
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_38

    :cond_a4
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_39

    :cond_a5
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_36

    :cond_a6
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_b2

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_ab

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_a9

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a8

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a8

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    :goto_3a
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_af

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3b
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    const/16 v20, 0x0

    :goto_3c
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a7

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_b0

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    :cond_a7
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_b1

    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_36

    :cond_a8
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    goto/16 :goto_3a

    :cond_a9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_aa

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_aa

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_3a

    :cond_aa
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_3a

    :cond_ab
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_ad

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_ac

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_ac

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_3a

    :cond_ac
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_3a

    :cond_ad
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_ae

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_ae

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_3a

    :cond_ae
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_3a

    :cond_af
    const-string/jumbo v4, ""

    goto/16 :goto_3b

    :cond_b0
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3c

    :cond_b1
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_36

    :cond_b2
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_b3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_36

    :cond_b3
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_b4

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_bd

    if-eqz p6, :cond_bd

    :cond_b4
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_b6

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_b5

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    :goto_3d
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_36

    :cond_b5
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_3d

    :cond_b6
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_ba

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b8

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3e
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b9

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b9

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    :goto_3f
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_bc

    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz p10, :cond_b7

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b7

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b7

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    :cond_b7
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_36

    :cond_b8
    const-string/jumbo v4, ""

    goto/16 :goto_3e

    :cond_b9
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3f

    :cond_ba
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_bb

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_bb

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3f

    :cond_bb
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3f

    :cond_bc
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_36

    :cond_bd
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_9a

    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_c0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_be

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_40
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_bf

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_bf

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    :goto_41
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_36

    :cond_be
    const-string/jumbo v4, ""

    goto :goto_40

    :cond_bf
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_41

    :cond_c0
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_c2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    :goto_43
    const/16 v20, 0x0

    :goto_44
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_c1

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_c3

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    :cond_c1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "audio/ogg"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    goto :goto_42

    :cond_c2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_43

    :cond_c3
    add-int/lit8 v20, v20, 0x1

    goto :goto_44

    :cond_c4
    const/4 v4, 0x4

    move/from16 v0, v54

    if-ne v0, v4, :cond_c9

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_c7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    if-eqz v25, :cond_c5

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    :cond_c5
    :goto_45
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_c6

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    :cond_c6
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_c8

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_46
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_45

    :cond_c8
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_c9
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    if-eqz p11, :cond_ca

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    :cond_ca
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_cb

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    :cond_cb
    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    const-string/jumbo v4, "id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    if-nez p14, :cond_cc

    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    :cond_cc
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    :catch_3
    move-exception v29

    move-object/from16 v12, v40

    move-object/from16 p5, v55

    goto/16 :goto_7

    :catch_4
    move-exception v29

    move-object/from16 v12, v40

    move-object/from16 v38, v39

    goto/16 :goto_7

    :cond_cd
    move-object/from16 v38, v39

    goto/16 :goto_e
.end method

.method private turboSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v40, 0x0

    if-eqz p17, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    :cond_2
    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v50, -0x1

    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v32, v0

    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v28, v0

    const/16 v30, 0x0

    const/16 v16, 0x0

    if-eqz v32, :cond_3

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v45

    :goto_1
    const/16 v46, 0x0

    if-nez v32, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    if-nez v16, :cond_5

    if-eqz p14, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    :cond_3
    const/16 v45, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, v45

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    if-eqz v24, :cond_f

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_f

    const/16 v30, 0x1

    :cond_5
    :goto_2
    if-eqz p14, :cond_19

    :try_start_0
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v50, 0x4

    :cond_6
    :goto_3
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v35

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_7
    if-eqz p17, :cond_9

    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v16, :cond_3c

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_8

    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    :cond_8
    :goto_4
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_9
    move-object/from16 v0, p17

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move-object/from16 v0, v45

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_3e

    if-eqz v30, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    if-eqz v24, :cond_b

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_3d

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x8000

    or-int/2addr v4, v6

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :cond_b
    :goto_5
    move-wide/from16 v0, p8

    move-object/from16 v2, v35

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    if-eqz p11, :cond_c

    if-eqz v16, :cond_3f

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_3f

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v35

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :goto_6
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    :cond_c
    if-eqz p16, :cond_d

    if-nez v16, :cond_d

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move-object/from16 v0, p16

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_d
    if-eqz v32, :cond_4b

    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_40

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v35

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v27

    move-object/from16 v12, v37

    :goto_7
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    if-eqz v12, :cond_e

    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    :cond_e
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v35

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    :cond_f
    const/16 v30, 0x0

    goto/16 :goto_2

    :cond_10
    :try_start_1
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_12

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p2, v0

    const/16 v50, 0x0

    :cond_11
    :goto_8
    if-eqz p17, :cond_6

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v50, 0x9

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_13

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p3, v0

    const/16 v50, 0x1

    goto :goto_8

    :cond_13
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p4, v0

    const/16 v50, 0x2

    goto :goto_8

    :cond_14
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_15

    const/16 v50, 0x3

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    goto :goto_8

    :cond_15
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_16

    new-instance v51, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v51 .. v51}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v51

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v51

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v51

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v51

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v50, 0x6

    move-object/from16 p6, v51

    goto/16 :goto_8

    :cond_16
    :try_start_3
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_18

    :cond_17
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    const/16 v50, 0x7

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_11

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    const/16 v50, 0x8

    goto/16 :goto_8

    :cond_19
    if-eqz p2, :cond_22

    if-eqz v16, :cond_1e

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_1e

    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v35, v36

    :goto_9
    if-eqz p15, :cond_1a

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v0, p15

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    :cond_1a
    if-eqz v16, :cond_1b

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_1f

    new-instance v38, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v38 .. v38}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 p12, v38

    :cond_1b
    :goto_a
    if-nez p12, :cond_20

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :goto_b
    if-eqz p17, :cond_21

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v50, 0x9

    :goto_c
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_1c
    :goto_d
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_1d

    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v30, :cond_3b

    if-eqz v45, :cond_3b

    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    :goto_e
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_3

    :cond_1e
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v35, v36

    goto/16 :goto_9

    :cond_1f
    const/16 p12, 0x0

    goto :goto_a

    :cond_20
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_b

    :cond_21
    const/16 v50, 0x0

    goto :goto_c

    :cond_22
    if-eqz p3, :cond_25

    if-eqz v16, :cond_23

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_23

    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v35, v36

    :goto_f
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p17, :cond_24

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v50, 0x9

    goto/16 :goto_d

    :cond_23
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v35, v36

    goto :goto_f

    :cond_24
    const/16 v50, 0x1

    goto/16 :goto_d

    :cond_25
    if-eqz p4, :cond_2a

    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_26

    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v35, v36

    :goto_10
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v35

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_27

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_11
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p4

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p17, :cond_28

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v50, 0x9

    :goto_12
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p10, :cond_29

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p10

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_d

    :cond_26
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v35, v36

    goto :goto_10

    :cond_27
    const-string/jumbo v4, ""

    goto :goto_11

    :cond_28
    const/16 v50, 0x2

    goto :goto_12

    :cond_29
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v31, v0

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_d

    :cond_2a
    if-eqz p6, :cond_2f

    if-eqz v16, :cond_2d

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_2d

    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v35, v36

    :goto_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_2b

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :cond_2b
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_2c

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_2c
    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz p17, :cond_2e

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v50, 0x9

    goto/16 :goto_d

    :cond_2d
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v35, v36

    goto :goto_13

    :cond_2e
    const/16 v50, 0x6

    goto/16 :goto_d

    :cond_2f
    if-eqz p7, :cond_1c

    if-eqz v16, :cond_30

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_30

    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    move-object/from16 v35, v36

    :goto_14
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v35

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_31

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_15
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p17, :cond_32

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const/16 v50, 0x9

    :goto_16
    if-nez p5, :cond_35

    const-string/jumbo v4, "-1"

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :goto_17
    if-eqz v16, :cond_36

    move-object/from16 v0, p7

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_36

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :goto_18
    if-eqz v16, :cond_1c

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v20, 0x0

    :goto_19
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1c

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_3a

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-ge v4, v6, :cond_37

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_30
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v35, v36

    goto/16 :goto_14

    :cond_31
    const-string/jumbo v4, ""

    goto/16 :goto_15

    :cond_32
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/16 v50, 0x3

    goto/16 :goto_16

    :cond_33
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/16 v50, 0x8

    goto/16 :goto_16

    :cond_34
    const/16 v50, 0x7

    goto/16 :goto_16

    :cond_35
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_17

    :cond_36
    move-object/from16 v0, p10

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_18

    :cond_37
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_39

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_38

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_38

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v34

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto/16 :goto_d

    :cond_38
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_d

    :cond_39
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_d

    :cond_3a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_19

    :cond_3b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_e

    :cond_3c
    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_4

    :cond_3d
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_b

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_5

    :cond_3e
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_5

    :cond_3f
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    :cond_40
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, v41

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v42

    if-eqz v42, :cond_41

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :catch_1
    move-exception v27

    move-object/from16 v46, v47

    move-object/from16 v12, v37

    goto/16 :goto_7

    :cond_42
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v32

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v46, v47

    :cond_43
    :goto_1b
    if-eqz v16, :cond_44

    :try_start_5
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_45

    :cond_44
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_45

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_45

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_45

    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_45
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-nez v4, :cond_46

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_46

    const/4 v4, 0x1

    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    :cond_46
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v39

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_47

    if-eqz v45, :cond_47

    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send message user_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " chat_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " channel_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " access_hash = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    if-eqz v50, :cond_48

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_60

    if-eqz p2, :cond_60

    if-eqz v16, :cond_60

    :cond_48
    if-nez v16, :cond_59

    if-eqz v46, :cond_53

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :goto_1c
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_52

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v20, v20, 0x1

    goto :goto_1c

    :cond_49
    :try_start_7
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-lez v32, :cond_43

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    if-nez v48, :cond_4a

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    :cond_4a
    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_43

    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1b

    :cond_4b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_4d

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_1d
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_43

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/16 v26, 0x0

    const/16 v20, 0x0

    :goto_1e
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_4c

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_4e

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    :cond_4c
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_1b

    :cond_4d
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1d

    :cond_4e
    add-int/lit8 v20, v20, 0x1

    goto :goto_1e

    :cond_4f
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_43

    const/16 v26, 0x0

    const/16 v20, 0x0

    :goto_1f
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_50

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_51

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    :cond_50
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1b

    :cond_51
    add-int/lit8 v20, v20, 0x1

    goto :goto_1f

    :cond_52
    :try_start_8
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v0, v43

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v27

    goto/16 :goto_7

    :cond_53
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    if-nez p14, :cond_58

    const/4 v4, 0x1

    :goto_20
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_54

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    :cond_54
    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    if-eqz p11, :cond_55

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    :cond_55
    if-nez p13, :cond_56

    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    :cond_56
    if-eqz p15, :cond_57

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    :cond_57
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    if-nez p14, :cond_0

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    :cond_58
    const/4 v4, 0x0

    goto :goto_20

    :cond_59
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_5d

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    if-eqz p15, :cond_5a

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_5a
    if-eqz p11, :cond_5b

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_5b

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_5b
    :goto_21
    if-eqz p17, :cond_5c

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5c

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_5c
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    if-eqz p12, :cond_5f

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_5f

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :goto_22
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    if-nez p14, :cond_0

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    :cond_5d
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_5e

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto :goto_21

    :cond_5e
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_21

    :cond_5f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_22

    :cond_60
    const/4 v4, 0x1

    move/from16 v0, v50

    if-lt v0, v4, :cond_61

    const/4 v4, 0x3

    move/from16 v0, v50

    if-le v0, v4, :cond_63

    :cond_61
    const/4 v4, 0x5

    move/from16 v0, v50

    if-lt v0, v4, :cond_62

    const/16 v4, 0x8

    move/from16 v0, v50

    if-le v0, v4, :cond_63

    :cond_62
    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_bc

    if-eqz v16, :cond_bc

    :cond_63
    if-nez v16, :cond_90

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/4 v4, 0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_66

    move-object/from16 v0, p3

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_65

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    :goto_23
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    :cond_64
    :goto_24
    if-eqz v46, :cond_81

    new-instance v44, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v44 .. v44}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :goto_25
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_7e

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_25

    :cond_65
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    goto :goto_23

    :cond_66
    const/4 v4, 0x2

    move/from16 v0, v50

    if-eq v0, v4, :cond_67

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_6c

    if-eqz p4, :cond_6c

    :cond_67
    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_6a

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_68

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_26
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    if-eqz p10, :cond_69

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_69

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_24

    :cond_68
    const-string/jumbo v4, ""

    goto :goto_26

    :cond_69
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_24

    :cond_6a
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_6b

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_27
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    move-object/from16 v29, v33

    goto/16 :goto_24

    :cond_6b
    const-string/jumbo v4, ""

    goto :goto_27

    :cond_6c
    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_71

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_6f

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_6d

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    :goto_28
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_6e

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_29
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_24

    :cond_6d
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    goto :goto_28

    :cond_6e
    const-string/jumbo v4, ""

    goto :goto_29

    :cond_6f
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_70

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2a
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    move-object/from16 v29, v33

    goto/16 :goto_24

    :cond_70
    const-string/jumbo v4, ""

    goto :goto_2a

    :cond_71
    const/4 v4, 0x6

    move/from16 v0, v50

    if-ne v0, v4, :cond_72

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_24

    :cond_72
    const/4 v4, 0x7

    move/from16 v0, v50

    if-eq v0, v4, :cond_73

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_7a

    :cond_73
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_78

    if-nez v16, :cond_75

    if-eqz v40, :cond_75

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_75

    const-string/jumbo v4, "http"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    if-eqz p17, :cond_75

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    const-string/jumbo v4, "url"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_74

    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->url:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    :cond_74
    :goto_2b
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_77

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_24

    :cond_75
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_76

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_76

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    :goto_2d
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2b

    :cond_76
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    goto :goto_2d

    :cond_77
    const-string/jumbo v4, ""

    goto :goto_2c

    :cond_78
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_79

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2e
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    move-object/from16 v29, v33

    goto/16 :goto_24

    :cond_79
    const-string/jumbo v4, ""

    goto :goto_2e

    :cond_7a
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_64

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7c

    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7b

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2f
    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_24

    :cond_7b
    const-string/jumbo v4, ""

    goto :goto_2f

    :cond_7c
    new-instance v33, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v33 .. v33}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7d

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_30
    move-object/from16 v0, v33

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    move-object/from16 v29, v33

    goto/16 :goto_24

    :cond_7d
    const-string/jumbo v4, ""

    goto :goto_30

    :cond_7e
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    const-string/jumbo v4, ""

    move-object/from16 v0, v44

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    if-eqz v25, :cond_7f

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    :cond_7f
    move-object/from16 v7, v44

    if-nez p14, :cond_80

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    :cond_80
    :goto_31
    const/4 v4, 0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_87

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_81
    new-instance v44, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v44 .. v44}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_82

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    :cond_82
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v44

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    if-eqz p1, :cond_83

    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_86

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_32
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    :cond_83
    if-eqz p11, :cond_84

    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    :cond_84
    if-eqz v25, :cond_85

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    :cond_85
    move-object/from16 v7, v44

    goto/16 :goto_31

    :cond_86
    const-string/jumbo v4, ""

    goto :goto_32

    :cond_87
    const/4 v4, 0x2

    move/from16 v0, v50

    if-ne v0, v4, :cond_89

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_88

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_88
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_89
    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_8b

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8a

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_8a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8b
    const/4 v4, 0x6

    move/from16 v0, v50

    if-ne v0, v4, :cond_8c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8c
    const/4 v4, 0x7

    move/from16 v0, v50

    if-ne v0, v4, :cond_8e

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8d

    if-eqz v25, :cond_8d

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_8d
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8e
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8f

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    :cond_8f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_90
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_95

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    if-eqz p15, :cond_91

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_91

    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_91
    if-eqz p11, :cond_92

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_92

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_92
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :goto_33
    if-eqz p17, :cond_93

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_93

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    :cond_93
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    const-string/jumbo v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    const/4 v4, 0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_98

    move-object/from16 v0, p3

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_97

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_97

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    :goto_34
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    :cond_94
    :goto_35
    if-nez p14, :cond_0

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    :cond_95
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_96

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto/16 :goto_33

    :cond_96
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_33

    :cond_97
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_34

    :cond_98
    const/4 v4, 0x2

    move/from16 v0, v50

    if-eq v0, v4, :cond_99

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_a0

    if-eqz p4, :cond_a0

    :cond_99
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_9c

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_9a

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_36
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, v49

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_9b

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    :goto_37
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_9f

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz p10, :cond_9e

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9e

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    :cond_9a
    const-string/jumbo v4, ""

    goto/16 :goto_36

    :cond_9b
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_37

    :cond_9c
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v49

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_9d

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_37

    :cond_9d
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_37

    :cond_9e
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_38

    :cond_9f
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    :cond_a0
    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_aa

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_a3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a2

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a2

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    :goto_39
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a7

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3a
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    const/16 v20, 0x0

    :goto_3b
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a1

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_a8

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    :cond_a1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_a9

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    :cond_a2
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_39

    :cond_a3
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_a5

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a4

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a4

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_39

    :cond_a4
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_39

    :cond_a5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a6

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a6

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_39

    :cond_a6
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_39

    :cond_a7
    const-string/jumbo v4, ""

    goto/16 :goto_3a

    :cond_a8
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3b

    :cond_a9
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    :cond_aa
    const/4 v4, 0x6

    move/from16 v0, v50

    if-ne v0, v4, :cond_ab

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    :cond_ab
    const/4 v4, 0x7

    move/from16 v0, v50

    if-eq v0, v4, :cond_ac

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_b5

    if-eqz p7, :cond_b5

    :cond_ac
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_ae

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_ad

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    :goto_3c
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    :cond_ad
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_3c

    :cond_ae
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_b2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b0

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3d
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b1

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b1

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    :goto_3e
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_b4

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz p10, :cond_af

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_af

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    :cond_af
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    :cond_b0
    const-string/jumbo v4, ""

    goto/16 :goto_3d

    :cond_b1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3e

    :cond_b2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b3

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b3

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3e

    :cond_b3
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3e

    :cond_b4
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    :cond_b5
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_94

    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_b8

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b6

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3f
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b7

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b7

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    :goto_40
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    :cond_b6
    const-string/jumbo v4, ""

    goto :goto_3f

    :cond_b7
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_40

    :cond_b8
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_ba

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    :goto_42
    const/16 v20, 0x0

    :goto_43
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_b9

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_bb

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    :cond_b9
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "audio/ogg"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    goto :goto_41

    :cond_ba
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_42

    :cond_bb
    add-int/lit8 v20, v20, 0x1

    goto :goto_43

    :cond_bc
    const/4 v4, 0x4

    move/from16 v0, v50

    if-ne v0, v4, :cond_c1

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_bf

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    if-eqz v24, :cond_bd

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v24

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    :cond_bd
    :goto_44
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_be

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    :cond_be
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_c0

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_45
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_bf
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_44

    :cond_c0
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_c1
    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_0

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    if-eqz p11, :cond_c2

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    :cond_c2
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_c3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    :cond_c3
    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    const-string/jumbo v4, "id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    if-nez p14, :cond_c4

    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    :cond_c4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_3
    move-exception v27

    move-object/from16 v12, v37

    move-object/from16 p6, v51

    goto/16 :goto_7
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_c

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v13, :cond_3

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    :cond_2
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_2

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v11, :cond_4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_4

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v12, :cond_6

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_8
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-ne v13, v14, :cond_6

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-ne v13, v14, :cond_6

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_a

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v14, 0x5a

    if-le v13, v14, :cond_b

    :cond_a
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    :goto_4
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto/16 :goto_2

    :cond_b
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_1d

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_1d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_1d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_1d

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_d
    :goto_5
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v12, :cond_12

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_12

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_12

    if-eqz v11, :cond_12

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_12

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_12

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    :cond_e
    :goto_6
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_16

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    :cond_f
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    if-eqz v10, :cond_17

    const/4 v2, 0x0

    :goto_8
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_17

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_10

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    iget v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    goto/16 :goto_5

    :cond_12
    if-eqz v12, :cond_13

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_13

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_6

    :cond_13
    if-eqz v12, :cond_14

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v13, :cond_15

    :cond_14
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v13, :cond_e

    :cond_15
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_6

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_17
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_18

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    :cond_18
    :goto_9
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v13, :cond_1c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    new-instance v5, Ljava/io/File;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_1a

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_9

    :cond_1a
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_1b

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    const-string/jumbo v13, ""

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string/jumbo v13, "http"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_1e

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_1e

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v13, :cond_1f

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v8, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-ne v8, v9, :cond_1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    iget-object v9, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v7, "http"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v7, v5, v10, v10, v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    return-void

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public checkUnsentMessages()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getUnsentMessages(I)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 34

    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v19, p2, v4

    check-cast v19, Lorg/telegram/tgnet/TLRPC$InputFile;

    const/4 v4, 0x2

    aget-object v8, p2, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_e

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/16 v26, 0x0

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v4, :cond_3

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    :cond_0
    :goto_1
    if-eqz v19, :cond_b

    if-eqz v26, :cond_b

    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_4

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    :cond_1
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-eqz v4, :cond_0

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    goto :goto_1

    :cond_4
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_5

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_9

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_8

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    if-eqz v8, :cond_2

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_2

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-nez v4, :cond_c

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-nez v4, :cond_c

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v4, :cond_d

    :cond_c
    const/4 v4, 0x5

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-wide/from16 v0, v32

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    :cond_d
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x3

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x4

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v27

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_4
    return-void

    :cond_10
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_14

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    if-eqz v18, :cond_11

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-nez v4, :cond_12

    :cond_11
    if-nez v18, :cond_13

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_13

    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_15
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_17

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_18
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_1a

    const/16 v21, 0x1

    :goto_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_19

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_1b

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string/jumbo v5, "-1"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_7

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_1c
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1f

    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1e

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_1e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1f
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_22

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v6, "file"

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/io/File;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_20
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_21
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_23
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_25

    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_24

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_25
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_26

    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    :cond_26
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v27

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_d

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method public editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    if-nez p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    if-eqz p5, :cond_3

    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$5;

    invoke-direct {v2, p0, p6, p4}, Lorg/telegram/messenger/SendMessagesHelper$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    goto :goto_0
.end method

.method public generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .locals 11

    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v10, 0x4448

    const/high16 v6, 0x42b4

    const/4 v3, 0x1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    invoke-static {p1, p2, v10, v10, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x37

    invoke-static {v0, v6, v6, v1, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    iput-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextRandomId()J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public isSendingCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendingCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendingMessage(I)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V
    .locals 18

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v4, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_5
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method protected processSentMessage(I)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    :cond_0
    return-void
.end method

.method protected processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$11;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected removeFromSendingMessages(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v0, v4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v2, :cond_8

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v2, :cond_9

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    :cond_9
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v2, :cond_a

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v2, :cond_b

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_1

    :cond_b
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v2, :cond_c

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v2, :cond_d

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    :cond_d
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    :cond_e
    if-eqz p2, :cond_f

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/MessageObject;)V

    move v2, v3

    goto/16 :goto_0
.end method

.method public sendCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v0, :cond_2

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    :cond_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$6;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$6;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    const/4 v1, 0x2

    invoke-virtual {v7, v6, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    return-void
.end method

.method public sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V
    .locals 9

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_2

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_3

    move-wide v6, p3

    :goto_1
    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-nez v6, :cond_4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v6

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->getObjectSize()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {v1, p3, p4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/SendMessagesHelper$7;

    invoke-direct {v7, p0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper$7;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v6

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_4
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-wide v4, p5

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_4
.end method

.method public sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendMessage(Ljava/util/ArrayList;J)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v21, v0

    move-wide/from16 v0, p2

    long-to-int v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-lez v21, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    if-eqz v31, :cond_0

    :cond_2
    :goto_0
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v18

    const-wide/16 v22, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v21

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v19, v0

    iget-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    move/from16 v20, v0

    goto :goto_0

    :cond_5
    new-instance v26, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    :goto_3
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v4, 0x4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_6

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_6
    if-eqz v19, :cond_7

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x8000

    or-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_7
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_8

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_8
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_9
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_a

    const-string/jumbo v4, ""

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_16

    if-nez v19, :cond_16

    if-eqz v20, :cond_15

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    :goto_4
    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    :goto_5
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    move-object/from16 v0, v26

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_b
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_18

    if-nez v19, :cond_17

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :goto_6
    move-wide/from16 v0, p2

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-object/from16 v0, v26

    iput-object v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_c
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_d

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :cond_d
    new-instance v27, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    const/16 v16, 0x0

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "tmessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forward message user_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " chat_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " channel_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " access_hash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v13, v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v13, v4, :cond_3

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    :cond_f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p2

    move-object/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_10

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v30

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    :cond_10
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_1a

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    if-eqz v15, :cond_11

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    :cond_11
    :goto_7
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, v30

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    move-object v10, v14

    move-object/from16 v11, v28

    move-object/from16 v9, v24

    move/from16 v8, v19

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v32

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4;

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v4 .. v12}, Lorg/telegram/messenger/SendMessagesHelper$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper;JZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;)V

    const/16 v5, 0x44

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v13, v4, :cond_3

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_2

    :cond_12
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    :cond_13
    :goto_9
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_post:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_13

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto :goto_9

    :cond_15
    iget v4, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    goto/16 :goto_4

    :cond_16
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_5

    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_19

    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_6

    :cond_1a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_7

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_8
.end method

.method public sendMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v2, p0

    move-object/from16 v16, p1

    invoke-direct/range {v2 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_game;JLorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V
    .locals 20

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_3

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v15, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v11, v2, [B

    new-instance v18, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object/from16 p1, v17

    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCurrentChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method

.method protected stopVideoService(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$8;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public turboProcessForwardFromMyName(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;J)V
    .locals 15

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->turboSendPhotoMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->turboSendDocumentMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v2, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v0, p3

    invoke-virtual {p0, v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-wide/from16 v6, p3

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v0, p3

    invoke-virtual {p0, v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method public turboSendDocumentMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    move-wide/from16 v8, p5

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->turboSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method

.method public turboSendPhotoMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->turboSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    return-void
.end method
