.class public interface abstract Lorg/telegram/messenger/exoplayer/upstream/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)Lorg/telegram/messenger/exoplayer/upstream/DataSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
