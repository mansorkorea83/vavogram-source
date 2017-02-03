.class abstract Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.super Ljava/lang/Object;
.source "SmoothStreamingManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ElementParser"
.end annotation


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private final normalizedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parent:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parent:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->baseUri:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->tag:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    return-void
.end method

.method private newChildParser(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
    .locals 1

    const-string/jumbo v0, "QualityLevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;-><init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Protection"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;-><init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "StreamIndex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$StreamElementParser;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$StreamElementParser;-><init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addChild(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected abstract build()Ljava/lang/Object;
.end method

.method protected final getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parent:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parent:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method protected handleChildInline(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->tag:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->baseUri:Ljava/lang/String;

    invoke-direct {p0, p0, v4, v5}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->newChildParser(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->addChild(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_0

    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->build()Ljava/lang/Object;

    move-result-object v5

    :goto_2
    return-object v5

    :pswitch_3
    const/4 v5, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    :cond_0
    return p3
.end method

.method protected parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    return-void
.end method

.method protected final parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    :cond_0
    return p3

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    :cond_0
    return-wide p3

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;

    invoke-direct {v2, p2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final parseRequiredLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;

    invoke-direct {v2, p2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;

    invoke-direct {v1, p2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    return-void
.end method

.method protected parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    return-void
.end method

.method protected final putNormalizedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
