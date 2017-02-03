.class public Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.super Ljava/lang/Object;
.source "SmoothStreamingManifestParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$StreamElementParser;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;-><init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
