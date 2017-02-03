.class Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->notifyLoadCompleted(JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$bytesLoaded:J

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$format:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field final synthetic val$loadDurationMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trigger:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;JIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$bytesLoaded:J

    iput p4, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$type:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$trigger:I

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$mediaStartTimeUs:J

    iput-wide p9, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$mediaEndTimeUs:J

    iput-wide p11, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$elapsedRealtimeMs:J

    iput-wide p13, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$loadDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->access$100(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;)Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;)I

    move-result v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$bytesLoaded:J

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$type:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$trigger:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$mediaStartTimeUs:J

    invoke-virtual {v2, v10, v11}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->usToMs(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$mediaEndTimeUs:J

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->usToMs(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$elapsedRealtimeMs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$2;->val$loadDurationMs:J

    move-wide/from16 v16, v0

    invoke-interface/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;->onLoadCompleted(IJIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V

    return-void
.end method
