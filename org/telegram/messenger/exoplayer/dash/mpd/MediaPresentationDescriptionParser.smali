.class public Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "MediaPresentationDescriptionParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
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

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    move p0, p1

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-eq p1, v0, :cond_0

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 7

    move v1, p1

    const/4 v5, 0x0

    const-string/jumbo v6, "frameRate"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v5, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    int-to-float v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    :cond_0
    :goto_0
    return v1

    :cond_1
    int-to-float v1, v4

    goto :goto_0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildContentProtection(Ljava/lang/String;Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;-><init>(Ljava/lang/String;Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 11

    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildMediaPresentationDescription(JJJZJJLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Period;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Period;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 9

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected buildRepresentation(Ljava/lang/String;ILorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;
    .locals 2

    int-to-long v0, p2

    invoke-static {p1, v0, v1, p3, p4}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected buildSegmentList(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildSegmentTemplate(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildSegmentTimelineElement(JJ)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 11

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    return-object v0
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentType(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;)I
    .locals 5

    const/4 v3, 0x2

    const/4 v2, -0x1

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v1, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "application/ttml+xml"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "application/mp4"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    const-string/jumbo v4, "stpp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "wvtt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string/jumbo v3, "MPD"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v4, "inputStream does not contain a valid media presentation description"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v3, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v0

    new-instance v3, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v4, "id"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v18

    const/4 v4, 0x0

    const-string/jumbo v5, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const-string/jumbo v5, "codecs"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "width"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v4, "height"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const/high16 v4, -0x4080

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    const/4 v12, -0x1

    const-string/jumbo v4, "audioSamplingRate"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    const/4 v4, 0x0

    const-string/jumbo v5, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v16, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v22, :cond_1

    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v22, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v4, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->build()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v4

    return-object v4

    :cond_2
    const-string/jumbo v4, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    const-string/jumbo v5, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move/from16 v0, v18

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkContentTypeConsistency(II)I

    move-result v18

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p3

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->endRepresentation()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->getContentType(Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;)I

    move-result v4

    move/from16 v0, v18

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkContentTypeConsistency(II)I

    move-result v18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v12

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast p3, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    invoke-virtual/range {p0 .. p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object p3

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast p3, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    invoke-virtual/range {p0 .. p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object p3

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    check-cast p3, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    invoke-virtual/range {p0 .. p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object p3

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "schemeIdUri"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "value"

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v2, "AudioChannelConfiguration"

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v5, "schemeIdUri"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v5, "cenc:pssh"

    invoke-static {p1, v5}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    new-instance v0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v5, "video/mp4"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v3

    :cond_1
    const-string/jumbo v5, "ContentProtection"

    invoke-static {p1, v5}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    const-string/jumbo v5, "MediaPresentationDescriptionParser"

    const-string/jumbo v6, "Skipped unsupported ContentProtection element"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {p0, v1, v3, v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildContentProtection(Ljava/lang/String;Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    move-result-object v4

    goto :goto_0
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "contentType"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "audio"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 2

    const-string/jumbo v0, "sourceURL"

    const-string/jumbo v1, "range"

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-string/jumbo v7, "availabilityStartTime"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v7, "mediaPresentationDuration"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v7, "minBufferTime"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v7, 0x0

    const-string/jumbo v30, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    const-string/jumbo v7, "dynamic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :goto_0
    if-eqz v14, :cond_4

    const-string/jumbo v7, "minimumUpdatePeriod"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    :goto_1
    if-eqz v14, :cond_5

    const-string/jumbo v7, "timeShiftBufferDepth"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    :goto_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_6

    const-wide/16 v22, -0x1

    :goto_3
    const/16 v27, 0x0

    const/16 v28, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v7, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v28, :cond_1

    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v28, 0x1

    :cond_1
    :goto_4
    const-string/jumbo v7, "MPD"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v30, -0x1

    cmp-long v7, v10, v30

    if-nez v7, :cond_2

    const-wide/16 v30, -0x1

    cmp-long v7, v22, v30

    if-eqz v7, :cond_d

    move-wide/from16 v10, v22

    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v30, "No periods found."

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v15, -0x1

    goto :goto_1

    :cond_5
    const-wide/16 v17, -0x1

    goto :goto_2

    :cond_6
    const-wide/16 v22, 0x0

    goto :goto_3

    :cond_7
    const-string/jumbo v7, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v19

    goto :goto_4

    :cond_8
    const-string/jumbo v7, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    :cond_9
    const-string/jumbo v7, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v27, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    iget-wide v0, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->startMs:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x1

    cmp-long v7, v30, v32

    if-nez v7, :cond_b

    if-eqz v14, :cond_a

    const/16 v27, 0x1

    goto/16 :goto_4

    :cond_a
    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unable to determine start of period "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v30, -0x1

    cmp-long v7, v24, v30

    if-nez v7, :cond_c

    const-wide/16 v22, -0x1

    :goto_5
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    iget-wide v0, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->startMs:J

    move-wide/from16 v30, v0

    add-long v22, v30, v24

    goto :goto_5

    :cond_d
    if-nez v14, :cond_2

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v30, "Unable to determine duration of static manifest."

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v21}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildMediaPresentationDescription(JJJZJJLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v7

    return-object v7
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const-string/jumbo v13, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "start"

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v12, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v12, "duration"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v9, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v12, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v8, :cond_1

    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v8, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v12, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    :cond_2
    const-string/jumbo v12, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v12, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v9

    goto :goto_0

    :cond_5
    const-string/jumbo v12, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v9

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 16

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    array-length v3, v10

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v12, v6

    const-wide/16 v14, 0x1

    add-long v8, v12, v14

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    return-object v3
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v18, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "bandwidth"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v4, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "codecs"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v4, "width"

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v4, "height"

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v9

    move/from16 v10, p8

    const-string/jumbo v4, "audioSamplingRate"

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v13, p10

    const/16 v17, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v17, :cond_1

    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v17, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v4, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    const/16 v18, -0x1

    if-eqz p11, :cond_7

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, p11

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRepresentation(Ljava/lang/String;ILorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    move-result-object v4

    return-object v4

    :cond_2
    const-string/jumbo v4, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast p11, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object p11

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast p11, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object p11

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    check-cast p11, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object p11

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p12

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V

    goto/16 :goto_0

    :cond_7
    new-instance p11, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v4, "timescale"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->timescale:J

    move-wide/from16 v18, v0

    :goto_0
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v4, "presentationTimeOffset"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    move-wide/from16 v18, v0

    :goto_1
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-wide v11, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    :goto_2
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget-wide v13, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    :goto_3
    const/4 v4, 0x0

    const-string/jumbo v10, "indexRange"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    const-string/jumbo v4, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v18, v18, v11

    const-wide/16 v20, 0x1

    add-long v13, v18, v20

    :cond_0
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->initialization:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    :cond_1
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v4, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v5

    :cond_2
    const-string/jumbo v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v10, p2

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSingleSegmentBase(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v4

    return-object v4

    :cond_3
    const-wide/16 v18, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v18, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v13, -0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "timescale"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v2, "presentationTimeOffset"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v2, "duration"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string/jumbo v13, "startNumber"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v13, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v2, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    :cond_1
    :goto_4
    const-string/jumbo v2, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_2

    if-eqz v3, :cond_a

    :goto_5
    if-eqz v11, :cond_b

    :goto_6
    if-eqz v12, :cond_c

    :cond_2
    :goto_7
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentList(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v2

    return-object v2

    :cond_3
    const-wide/16 v14, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v14, -0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v11

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "SegmentURL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v12, :cond_9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-virtual/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->initialization:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    goto :goto_5

    :cond_b
    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    goto :goto_6

    :cond_c
    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    goto :goto_7
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "timescale"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v2, "presentationTimeOffset"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v2, "duration"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string/jumbo v14, "startNumber"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v14, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v14, "media"

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v13

    const-string/jumbo v14, "initialization"

    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v11, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v2, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    :cond_1
    :goto_6
    const-string/jumbo v2, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_2

    if-eqz v3, :cond_a

    :goto_7
    if-eqz v11, :cond_b

    :cond_2
    :goto_8
    move-object/from16 v2, p0

    move-object/from16 v14, p2

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTemplate(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v2

    return-object v2

    :cond_3
    const-wide/16 v14, 0x1

    goto/16 :goto_0

    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v14, -0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const-string/jumbo v2, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v11

    goto :goto_6

    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initialization:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    goto :goto_7

    :cond_b
    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    goto :goto_8
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v7, "S"

    invoke-static {p1, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "t"

    invoke-static {p1, v7, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v7, "d"

    invoke-static {p1, v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v7, "r"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v4, v5, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTimelineElement(JJ)Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "SegmentTimeline"

    invoke-static {p1, v7}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v6
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "mediaRange"

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;)Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->compile(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "schemeIdUri"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "value"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v2

    return-object v2
.end method
