.class Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;
.super Ljava/lang/Object;
.source "MediaCodecTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitialized(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;

.field final synthetic val$decoderName:Ljava/lang/String;

.field final synthetic val$initializationDuration:J

.field final synthetic val$initializedTimestamp:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->val$decoderName:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->val$initializedTimestamp:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->val$initializationDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;

    #getter for: Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->access$000(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->val$decoderName:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->val$initializedTimestamp:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$3;->val$initializationDuration:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;->onDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method
