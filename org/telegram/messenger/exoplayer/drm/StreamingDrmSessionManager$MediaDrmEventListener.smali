.class Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;[BII[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm",
            "<+TT;>;[BII[B)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    return-void
.end method
