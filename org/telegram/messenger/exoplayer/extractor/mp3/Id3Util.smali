.class final Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;
.super Ljava/lang/Object;
.source "Id3Util.java"


# static fields
.field private static final CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset; = null

#the value of this static final field might be set in the static constructor
.field private static final ID3_TAG:I = 0x0

.field private static final MAXIMUM_METADATA_SIZE:I = 0x300000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->ID3_TAG:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UTF-16LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canParseMetadata(IIII)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0xff

    if-eq p1, v0, :cond_3

    if-lt p0, v1, :cond_3

    if-gt p0, v2, :cond_3

    const/high16 v0, 0x30

    if-gt p3, v0, :cond_3

    if-ne p0, v1, :cond_0

    and-int/lit8 v0, p2, 0x3f

    if-nez v0, :cond_3

    and-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    and-int/lit8 v0, p2, 0x1f

    if-nez v0, :cond_3

    :cond_1
    if-ne p0, v2, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canUnescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z
    .locals 12

    const/4 v3, 0x1

    const-wide/16 v10, 0x7f

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    if-nez p1, :cond_3

    const-wide/32 v6, 0x808080

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    and-long v6, v0, v10

    const/16 v5, 0x8

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/4 v5, 0x7

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    const/16 v5, 0x10

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/16 v5, 0xe

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    const/16 v5, 0x18

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/16 v5, 0x15

    shl-long/2addr v8, v5

    or-long v0, v6, v8

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    long-to-int v5, v0

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0
.end method

.method private static findNextComment(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x4

    const/4 v7, 0x0

    :goto_0
    if-ne p0, v13, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/4 v11, 0x6

    if-ge v10, v11, :cond_1

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    const/4 v10, 0x3

    const-string/jumbo v11, "US-ASCII"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "\u0000\u0000\u0000"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-gt v5, v10, :cond_0

    const-string/jumbo v10, "COM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    if-ltz v3, :cond_0

    sget-object v10, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    array-length v10, v10

    if-ge v3, v10, :cond_0

    sget-object v10, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    aget-object v0, v10, v3

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p1, v10, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\u0000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    if-ne v10, v13, :cond_0

    aget-object v7, v1, v9

    aget-object v8, v1, v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/16 v11, 0xa

    if-lt v10, v11, :cond_0

    const-string/jumbo v10, "US-ASCII"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {p1, v12, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    if-ne p0, v12, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    :goto_2
    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-gt v5, v10, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    if-ne p0, v12, :cond_4

    and-int/lit8 v10, v4, 0xc

    if-nez v10, :cond_5

    :cond_4
    const/4 v10, 0x3

    if-ne p0, v10, :cond_8

    and-int/lit16 v10, v4, 0xc0

    if-eqz v10, :cond_8

    :cond_5
    move v2, v8

    :goto_3
    if-nez v2, :cond_6

    const-string/jumbo v10, "COMM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_6
    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    goto :goto_2

    :cond_8
    move v2, v9

    goto :goto_3
.end method

.method private static parseGaplessInfo(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->unescape(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Z

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    if-ne p1, v7, :cond_4

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v6, :cond_0

    move-object v2, v5

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v1, v4, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    if-lt v1, v8, :cond_2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v1, :cond_2

    move-object v2, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_3
    :goto_1
    invoke-static {p1, p0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->findNextComment(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_4
    if-ne p1, v6, :cond_3

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v6, :cond_5

    move-object v2, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    if-lt v1, v8, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-le v1, v4, :cond_7

    :cond_6
    move-object v2, v5

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_8
    move-object v2, v5

    goto :goto_0
.end method

.method public static parseId3(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v11, 0xa

    const/4 v10, 0x0

    new-instance v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v8, v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p0, v8, v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->ID3_TAG:I

    if-eq v8, v9, :cond_0

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p0, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-object v4

    :cond_0
    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    if-nez v4, :cond_1

    invoke-static {v3, v5, v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->canParseMetadata(IIII)Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v1, v2, [B

    invoke-interface {p0, v1, v10, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    new-instance v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v8, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v8, v3, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->parseGaplessInfo(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v4

    :goto_1
    add-int/lit8 v8, v2, 0xa

    add-int/2addr v6, v8

    goto :goto_0

    :cond_1
    invoke-interface {p0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method

.method private static unescape(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    if-eq p1, v5, :cond_4

    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_1

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    :cond_2
    :goto_1
    move v3, v4

    :cond_3
    return v3

    :cond_4
    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->canUnescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->unescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    goto :goto_1

    :cond_5
    invoke-static {p0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->canUnescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->unescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    goto :goto_1
.end method

.method private static unescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V
    .locals 13

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    move v6, v3

    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/lit8 v11, v5, 0x4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-static {v0, v11, v0, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x4

    and-int/lit8 v3, v3, -0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    :cond_2
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    move v9, v7

    const/4 v4, 0x0

    move v10, v9

    :goto_2
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v1, :cond_5

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_3

    aget-byte v11, v0, v7

    if-nez v11, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v8, v7, 0x1

    aget-byte v11, v0, v7

    aput-byte v11, v0, v10

    add-int/lit8 v4, v4, 0x1

    move v10, v9

    move v7, v8

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v11

    sub-int v12, v7, v10

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-static {v0, v7, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit8 v3, v3, -0x3

    :cond_6
    if-ne v3, v6, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    add-int/lit8 v2, v11, -0x6

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->writeSyncSafeInteger([BII)V

    add-int/lit8 v11, v2, 0x4

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    add-int/lit8 v11, v2, 0x5

    and-int/lit16 v12, v3, 0xff

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    :cond_8
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0
.end method

.method private static writeSyncSafeInteger([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x15

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0xe

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method
