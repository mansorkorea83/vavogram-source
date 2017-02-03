.class Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->notifyBandwidthSample(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;

.field final synthetic val$bitrate:J

.field final synthetic val$bytes:J

.field final synthetic val$elapsedMs:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;IJJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->this$0:Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->val$elapsedMs:I

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->val$bytes:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->val$bitrate:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->this$0:Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;

    #getter for: Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->access$000(Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;)Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->val$elapsedMs:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->val$bytes:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;->val$bitrate:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method
