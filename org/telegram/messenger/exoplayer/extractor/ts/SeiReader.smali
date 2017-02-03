.class final Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const-string/jumbo v2, "application/eia-608"

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v6, v1

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    return-void
.end method


# virtual methods
.method public consume(JLorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 11

    const/16 v9, 0xff

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-le v1, v4, :cond_3

    const/4 v8, 0x0

    :cond_0
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/2addr v8, v0

    if-eq v0, v9, :cond_0

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/2addr v5, v0

    if-eq v0, v9, :cond_1

    invoke-static {v8, v5, p3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->isSeiMessageEia608(IILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p3, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
