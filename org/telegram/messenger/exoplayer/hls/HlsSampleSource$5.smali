.class Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyDownstreamFormatChanged(Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

.field final synthetic val$format:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field final synthetic val$positionUs:J

.field final synthetic val$trigger:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;Lorg/telegram/messenger/exoplayer/chunk/Format;IJ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->val$format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->val$trigger:I

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->val$positionUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->access$100(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventSourceId:I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->val$format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->val$trigger:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$5;->val$positionUs:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->usToMs(J)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;->onDownstreamFormatChanged(ILorg/telegram/messenger/exoplayer/chunk/Format;IJ)V

    return-void
.end method
