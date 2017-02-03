.class Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

.field final synthetic val$currentHeight:I

.field final synthetic val$currentPixelWidthHeightRatio:F

.field final synthetic val$currentUnappliedRotationDegrees:I

.field final synthetic val$currentWidth:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;IIIF)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentWidth:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentHeight:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentUnappliedRotationDegrees:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentPixelWidthHeightRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;

    #getter for: Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;->access$000(Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentWidth:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentHeight:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentUnappliedRotationDegrees:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$1;->val$currentPixelWidthHeightRatio:F

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/MediaCodecVideoTrackRenderer$EventListener;->onVideoSizeChanged(IIIF)V

    return-void
.end method
