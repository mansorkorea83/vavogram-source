.class public Lorg/telegram/messenger/volley/ServerError;
.super Lorg/telegram/messenger/volley/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/volley/VolleyError;-><init>(Lorg/telegram/messenger/volley/NetworkResponse;)V

    return-void
.end method
