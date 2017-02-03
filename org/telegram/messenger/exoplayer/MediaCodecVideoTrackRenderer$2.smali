.class Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

    #getter for: Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$2;->val$surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onDrawnToSurface(Landroid/view/Surface;)V

    return-void
.end method
