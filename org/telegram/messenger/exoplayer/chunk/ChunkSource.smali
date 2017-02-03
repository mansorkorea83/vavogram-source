.class public interface abstract Lorg/telegram/messenger/exoplayer/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract continueBuffering(J)V
.end method

.method public abstract disable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enable(I)V
.end method

.method public abstract getChunkOperation(Ljava/util/List;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
.end method

.method public abstract getTrackCount()I
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
.end method

.method public abstract prepare()Z
.end method
