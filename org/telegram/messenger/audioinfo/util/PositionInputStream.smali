.class public Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionInputStream.java"


# instance fields
.field private position:J

.field private positionMark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->positionMark:J

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v4, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    :cond_0
    return v2
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->positionMark:J

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    return-wide v2
.end method
