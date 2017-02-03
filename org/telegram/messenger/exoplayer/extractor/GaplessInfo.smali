.class public final Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
.super Ljava/lang/Object;
.source "GaplessInfo.java"


# static fields
.field private static final GAPLESS_COMMENT_ID:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final encoderDelay:I

.field public final encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    return-void
.end method

.method public static createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "iTunSMPB"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createFromXingHeaderValue(I)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 3

    shr-int/lit8 v0, p0, 0xc

    and-int/lit16 v1, p0, 0xfff

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;-><init>(II)V

    goto :goto_0
.end method
