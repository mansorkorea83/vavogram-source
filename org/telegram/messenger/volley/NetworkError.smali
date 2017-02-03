.class public Lorg/telegram/messenger/volley/NetworkError;
.super Lorg/telegram/messenger/volley/VolleyError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    return-void
.end method
