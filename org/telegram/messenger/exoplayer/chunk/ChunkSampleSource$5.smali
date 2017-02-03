.class Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->notifyUpstreamDiscarded(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;JJ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->val$mediaStartTimeUs:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->val$mediaEndTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->access$100(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;)Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->val$mediaStartTimeUs:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->usToMs(J)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$5;->val$mediaEndTimeUs:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->usToMs(J)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;->onUpstreamDiscarded(IJJ)V

    return-void
.end method
