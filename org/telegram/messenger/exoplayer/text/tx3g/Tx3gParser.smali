.class public final Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "Tx3gParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/SubtitleParser;


# instance fields
.field private final parsableByteArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/x-quicktime-tx3g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, p1, p3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gSubtitle;->EMPTY:Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gSubtitle;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gParser;->parsableByteArray:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gSubtitle;

    new-instance v3, Lorg/telegram/messenger/exoplayer/text/Cue;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gSubtitle;-><init>(Lorg/telegram/messenger/exoplayer/text/Cue;)V

    goto :goto_0
.end method
