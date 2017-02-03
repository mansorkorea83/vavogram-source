.class public Lorg/telegram/messenger/volley/VolleyError;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final networkResponse:Lorg/telegram/messenger/volley/NetworkResponse;

.field private networkTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/volley/VolleyError;->networkResponse:Lorg/telegram/messenger/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/volley/VolleyError;->networkResponse:Lorg/telegram/messenger/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/volley/VolleyError;->networkResponse:Lorg/telegram/messenger/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/volley/VolleyError;->networkResponse:Lorg/telegram/messenger/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/volley/VolleyError;->networkResponse:Lorg/telegram/messenger/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method public getNetworkTimeMs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/volley/VolleyError;->networkTimeMs:J

    return-wide v0
.end method

.method setNetworkTimeMs(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/volley/VolleyError;->networkTimeMs:J

    return-void
.end method
