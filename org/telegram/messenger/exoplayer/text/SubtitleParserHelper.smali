.class final Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;
.super Ljava/lang/Object;
.source "SubtitleParserHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FORMAT:I = 0x0

.field private static final MSG_SAMPLE:I = 0x1


# instance fields
.field private error:Ljava/io/IOException;

.field private final handler:Landroid/os/Handler;

.field private final parser:Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

.field private parsing:Z

.field private result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

.field private runtimeError:Ljava/lang/RuntimeException;

.field private sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

.field private subtitleOffsetUs:J

.field private subtitlesAreRelative:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/text/SubtitleParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parser:Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->flush()V

    return-void
.end method

.method private handleFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 4

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->subtitleOffsetUs:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    goto :goto_1
.end method

.method private handleSample(JLorg/telegram/messenger/exoplayer/SampleHolder;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parser:Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    iget-object v3, p3, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p3, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    invoke-interface {v1, v3, v4, v5}, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;->parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    if-eq v1, p3, :cond_0

    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    move-object v8, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->subtitleOffsetUs:J

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;-><init>(Lorg/telegram/messenger/exoplayer/text/Subtitle;ZJJ)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    iput-object v9, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parsing:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parsing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearResult()Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSampleHolder()Lorg/telegram/messenger/exoplayer/SampleHolder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->handleFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/exoplayer/util/Util;->getLong(II)J

    move-result-wide v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-direct {p0, v2, v3, v0}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->handleSample(JLorg/telegram/messenger/exoplayer/SampleHolder;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized isParsing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parsing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized startParseOperation()V
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parsing:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->parsing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->result:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/Util;->getTopInt(J)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer/util/Util;->getBottomInt(J)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
