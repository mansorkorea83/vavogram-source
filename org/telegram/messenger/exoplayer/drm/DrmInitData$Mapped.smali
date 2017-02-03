.class public final Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/drm/DrmInitData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapped"
.end annotation


# instance fields
.field private final schemeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method public put(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
