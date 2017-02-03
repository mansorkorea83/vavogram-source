.class Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;
.super Landroid/os/Handler;
.source "StreamingDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
