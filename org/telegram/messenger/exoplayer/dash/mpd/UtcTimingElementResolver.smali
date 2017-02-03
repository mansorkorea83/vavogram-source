.class public final Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;
.super Ljava/lang/Object;
.source "UtcTimingElementResolver.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$Iso8601Parser;,
        Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$XsDateTimeParser;,
        Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;
    }
.end annotation


# instance fields
.field private final callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

.field private singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private final timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

.field private final timingElementElapsedRealtime:J

.field private final uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;JLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElementElapsedRealtime:J

    invoke-static {p5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    return-void
.end method

.method private releaseLoader()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    return-void
.end method

.method private resolve()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    iget-object v0, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->resolveDirect()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$Iso8601Parser;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$Iso8601Parser;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$1;)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->resolveHttp(Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$XsDateTimeParser;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$XsDateTimeParser;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$1;)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->resolveHttp(Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Unsupported utc timing scheme"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;->onTimestampError(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveDirect()V
    .locals 8

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElementElapsedRealtime:J

    sub-long v2, v4, v6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    invoke-interface {v1, v6, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;->onTimestampResolved(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v6, v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;->onTimestampError(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private resolveHttp(Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v1, "utctiming"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;->value:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->singleUseLoader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    return-void
.end method

.method public static resolveTimingElement(Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;JLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;)V
    .locals 8

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;-><init>(Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;JLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;)V

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->resolve()V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 3

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Load cancelled"

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 6

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->releaseLoader()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->singleUseLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    invoke-interface {v2, v3, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;->onTimestampResolved(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;J)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->releaseLoader()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->callback:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;->timingElement:Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    invoke-interface {v0, v1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;->onTimestampError(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V

    return-void
.end method
