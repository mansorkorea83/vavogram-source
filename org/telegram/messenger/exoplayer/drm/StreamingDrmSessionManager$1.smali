.class Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    #getter for: Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->access$100(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    return-void
.end method
