.class public Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/drm/DrmSessionManager",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field final callback:Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mediaDrmHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager",
            "<TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Landroid/os/Handler;

.field final postResponseHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager",
            "<TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x65fb0f8667bfbd7aL

    const-wide v4, -0x546d19a41f77a06bL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            "Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    new-instance v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;)V

    invoke-interface {p7, v0}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->setOnEventListener(Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static createFrameworkDrm(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->createFrameworkDrm(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->newInstance(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;",
            ">(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            "Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm",
            "<TT;>;)",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;)V

    return-object v0
.end method

.method public static newPlayReadyInstance(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "PRCustomData"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newWidevineInstance(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$2;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x4

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v1, v2, p1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1

    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_1
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private openInternal(Z)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;

    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postKeyRequest()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postProvisionRequest()V
    .locals 3

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    goto :goto_0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaCrypto()Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "DrmRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData;->get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media does not support uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    sget-object v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    goto :goto_1
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
