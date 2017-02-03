.class public final Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Universal;
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
    name = "Universal"
.end annotation


# instance fields
.field private data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Universal;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Universal;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    return-object v0
.end method
