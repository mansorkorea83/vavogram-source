.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I = null

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string/jumbo v2, "isom"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "iso2"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "iso3"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "iso4"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "iso5"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "iso6"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "avc1"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hvc1"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hev1"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mp41"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "mp42"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "3g2a"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "3g2b"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "3gr6"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "3gs6"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "3ge6"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "3gg6"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "M4V "

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "M4A "

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "f4v "

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "kddi"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "M4VP"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "qt  "

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "MSNV"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    ushr-int/lit8 v3, p0, 0x8

    const-string/jumbo v4, "3gp"

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, v4, v3

    if-eq v0, p0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static sniffFragmented(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Z)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x1000

    cmp-long v18, v16, v18

    if-lez v18, :cond_1

    :cond_0
    const-wide/16 v16, 0x1000

    :cond_1
    move-wide/from16 v0, v16

    long-to-int v11, v0

    new-instance v9, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v9, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :cond_2
    :goto_0
    if-ge v10, v11, :cond_6

    const/16 v13, 0x8

    iget-object v0, v9, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v13}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    const-wide/16 v18, 0x1

    cmp-long v18, v6, v18

    if-nez v18, :cond_3

    const/16 v13, 0x10

    iget-object v0, v9, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    :cond_3
    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gez v18, :cond_4

    const/16 v18, 0x0

    :goto_1
    return v18

    :cond_4
    add-int/2addr v10, v13

    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    :cond_5
    const/4 v15, 0x1

    :cond_6
    if-eqz v12, :cond_e

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    const/16 v18, 0x1

    goto :goto_1

    :cond_7
    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v18, v18, v6

    int-to-long v0, v13

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    int-to-long v0, v11

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    int-to-long v0, v13

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    add-int/2addr v10, v4

    sget v18, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_d

    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v4, v0, :cond_8

    const/16 v18, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v4, :cond_9

    new-array v0, v4, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    :cond_9
    iget-object v0, v9, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    div-int/lit8 v8, v4, 0x4

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_c

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v12, 0x1

    :cond_c
    if-nez v12, :cond_2

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_d
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto/16 :goto_0

    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method public static sniffUnfragmented(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
