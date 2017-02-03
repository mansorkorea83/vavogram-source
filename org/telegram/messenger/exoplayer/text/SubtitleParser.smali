.class public interface abstract Lorg/telegram/messenger/exoplayer/text/SubtitleParser;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# virtual methods
.method public abstract canParse(Ljava/lang/String;)Z
.end method

.method public abstract parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation
.end method
