.class public final Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;
.super Ljava/lang/Object;
.source "ByteArrayDataSink.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/DataSink;


# instance fields
.field private stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)Lorg/telegram/messenger/exoplayer/upstream/DataSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    :goto_0
    return-object p0

    :cond_0
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
