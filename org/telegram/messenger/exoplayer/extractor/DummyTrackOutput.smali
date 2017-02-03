.class public Lorg/telegram/messenger/exoplayer/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skip(I)I

    move-result v0

    return v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 0

    return-void
.end method
