.class public final Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUDIO_TYPE:Ljava/lang/String; = "AUDIO"

.field private static final BANDWIDTH_ATTR:Ljava/lang/String; = "BANDWIDTH"

.field private static final BANDWIDTH_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final BYTERANGE_REGEX:Ljava/util/regex/Pattern; = null

.field private static final BYTERANGE_TAG:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final CLOSED_CAPTIONS_TYPE:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final CODECS_ATTR:Ljava/lang/String; = "CODECS"

.field private static final CODECS_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final DISCONTINUITY_SEQUENCE_TAG:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final DISCONTINUITY_TAG:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final ENDLIST_TAG:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final INSTREAM_ID_ATTR:Ljava/lang/String; = "INSTREAM-ID"

.field private static final INSTREAM_ID_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final IV_ATTR:Ljava/lang/String; = "IV"

.field private static final IV_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final KEY_TAG:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final LANGUAGE_ATTR:Ljava/lang/String; = "LANGUAGE"

.field private static final LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final MEDIA_DURATION_REGEX:Ljava/util/regex/Pattern; = null

.field private static final MEDIA_DURATION_TAG:Ljava/lang/String; = "#EXTINF"

.field private static final MEDIA_SEQUENCE_REGEX:Ljava/util/regex/Pattern; = null

.field private static final MEDIA_SEQUENCE_TAG:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final MEDIA_TAG:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final METHOD_AES128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_ATTR:Ljava/lang/String; = "METHOD"

.field private static final METHOD_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final NAME_ATTR:Ljava/lang/String; = "NAME"

.field private static final NAME_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final RESOLUTION_ATTR:Ljava/lang/String; = "RESOLUTION"

.field private static final RESOLUTION_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final STREAM_INF_TAG:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final SUBTITLES_TYPE:Ljava/lang/String; = "SUBTITLES"

.field private static final TARGET_DURATION_REGEX:Ljava/util/regex/Pattern; = null

.field private static final TARGET_DURATION_TAG:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TYPE_ATTR:Ljava/lang/String; = "TYPE"

.field private static final TYPE_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final URI_ATTR:Ljava/lang/String; = "URI"

.field private static final URI_ATTR_REGEX:Ljava/util/regex/Pattern; = null

.field private static final VERSION_REGEX:Ljava/util/regex/Pattern; = null

.field private static final VERSION_TAG:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "VIDEO"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->BANDWIDTH_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->CODECS_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->RESOLUTION_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "#EXTINF:([\\d.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->MEDIA_DURATION_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->MEDIA_SEQUENCE_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->TARGET_DURATION_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->VERSION_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->BYTERANGE_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "METHOD=(NONE|AES-128)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->METHOD_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->IV_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->TYPE_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "INSTREAM-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->INSTREAM_ID_ATTR_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseMasterPlaylist(Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    const/16 v26, 0x0

    const/4 v11, 0x0

    const/16 v39, -0x1

    const/16 v28, -0x1

    const/4 v15, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v27, 0x0

    move-object/from16 v33, v15

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v3, "#EXT-X-MEDIA"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->TYPE_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "TYPE"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v3, "CLOSED-CAPTIONS"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->INSTREAM_ID_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "INSTREAM-ID"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v3, "CC1"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v32

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SUBTITLES"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "NAME"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "URI"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/Format;

    const-string/jumbo v3, "application/x-mpegURL"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/high16 v6, -0x4080

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-object/from16 v0, v37

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/Format;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, "AUDIO"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_3

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "NAME"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/Format;

    const-string/jumbo v14, "application/x-mpegURL"

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x4080

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object v12, v1

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-object/from16 v0, v37

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/Format;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v31, v10

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, "#EXT-X-STREAM-INF"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->BANDWIDTH_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "BANDWIDTH"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v26

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->CODECS_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v11

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v15

    sget-object v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->RESOLUTION_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_7

    const-string/jumbo v3, "x"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    const/4 v3, 0x0

    aget-object v3, v40, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    if-gtz v39, :cond_5

    const/16 v39, -0x1

    :cond_5
    const/4 v3, 0x1

    aget-object v3, v40, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    if-gtz v28, :cond_6

    const/16 v28, -0x1

    :cond_6
    :goto_1
    const/16 v27, 0x1

    move-object/from16 v33, v15

    goto/16 :goto_0

    :cond_7
    const/16 v39, -0x1

    const/16 v28, -0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "#"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v27, :cond_0

    if-nez v33, :cond_a

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    :goto_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/Format;

    const-string/jumbo v16, "application/x-mpegURL"

    const/high16 v19, -0x4080

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v23, 0x0

    move-object v14, v1

    move/from16 v17, v39

    move/from16 v18, v28

    move/from16 v22, v26

    move-object/from16 v24, v11

    invoke-direct/range {v14 .. v24}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/Variant;

    move-object/from16 v0, v30

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/Format;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v39, -0x1

    const/16 v28, -0x1

    const/16 v27, 0x0

    move-object/from16 v33, v15

    goto/16 :goto_0

    :cond_9
    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;

    move-object/from16 v4, p1

    move-object/from16 v5, v38

    move-object/from16 v6, v25

    move-object/from16 v7, v35

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_a
    move-object/from16 v15, v33

    goto :goto_2
.end method

.method private static parseMediaPlaylist(Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/16 v26, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "#EXT-X-TARGETDURATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->TARGET_DURATION_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "#EXT-X-TARGETDURATION"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v19

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->MEDIA_SEQUENCE_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "#EXT-X-MEDIA-SEQUENCE"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v18

    move/from16 v26, v18

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "#EXT-X-VERSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->VERSION_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "#EXT-X-VERSION"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v20

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "#EXTINF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->MEDIA_DURATION_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "#EXTINF"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "#EXT-X-KEY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->METHOD_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "METHOD"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v2, "AES-128"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "URI"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->IV_ATTR_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "#EXT-X-BYTERANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->BYTERANGE_REGEX:Ljava/util/regex/Pattern;

    const-string/jumbo v16, "#EXT-X-BYTERANGE"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v2, "@"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x0

    aget-object v2, v28, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, v28

    array-length v2, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v2, v0, :cond_0

    const/4 v2, 0x1

    aget-object v2, v28, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v9, :cond_c

    const/4 v11, 0x0

    :goto_1
    add-int/lit8 v26, v26, 0x1

    const-wide/16 v16, -0x1

    cmp-long v2, v14, v16

    if-nez v2, :cond_a

    const-wide/16 v12, 0x0

    :cond_a
    new-instance v2, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    invoke-direct/range {v2 .. v15}, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;DIJZLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v16, 0x412e848000000000L

    mul-double v16, v16, v4

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v7, v7, v16

    const-wide/16 v4, 0x0

    const-wide/16 v16, -0x1

    cmp-long v2, v14, v16

    if-eqz v2, :cond_b

    add-long/2addr v12, v14

    :cond_b
    const-wide/16 v14, -0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v24, :cond_d

    move-object/from16 v11, v24

    goto :goto_1

    :cond_d
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_e
    const-string/jumbo v2, "#EXT-X-ENDLIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_f
    new-instance v16, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v22}, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;-><init>(Ljava/lang/String;IIIZLjava/util/List;)V

    return-object v16
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

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v3, p1}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->parseMasterPlaylist(Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_1
    return-object v3

    :cond_1
    :try_start_1
    const-string/jumbo v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXTINF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXT-X-KEY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXT-X-BYTERANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "#EXT-X-ENDLIST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v3, p1}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->parseMediaPlaylist(Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v3

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    new-instance v3, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v4, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
