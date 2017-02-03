.class public interface abstract Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# virtual methods
.method public abstract format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
.end method

.method public abstract sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
.end method

.method public abstract sampleMetadata(JIII[B)V
.end method
