.class public Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;
.super Ljava/lang/Object;
.source "ContentProtection.java"


# instance fields
.field public final data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

.field public final schemeUriId:Ljava/lang/String;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
