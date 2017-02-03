.class Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$countToNotify:I

.field final synthetic val$elapsedToNotify:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;IJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;->val$countToNotify:I

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;->val$elapsedToNotify:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

    #getter for: Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;->val$countToNotify:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$3;->val$elapsedToNotify:J

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onDroppedFrames(IJ)V

    return-void
.end method
