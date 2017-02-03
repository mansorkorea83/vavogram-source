.class Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$XsDateTimeParser;
.super Ljava/lang/Object;
.source "UtcTimingElementResolver.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XsDateTimeParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$XsDateTimeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$XsDateTimeParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
