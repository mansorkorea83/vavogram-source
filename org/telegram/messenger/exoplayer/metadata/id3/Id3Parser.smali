.class public final Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;
.super Ljava/lang/Object;
.source "Id3Parser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delimiterLength(I)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "ISO-8859-1"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOfEos([BII)I
    .locals 2

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v0

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v0

    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_3
    array-length v1, p0

    goto :goto_0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2

    move v0, p1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private static parseApicFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v11, p1, -0x1

    new-array v1, v11, [B

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v1, v12, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v1, v12}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v7

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-1"

    invoke-direct {v6, v1, v12, v7, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v11, v7, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v10, v11, 0xff

    add-int/lit8 v4, v7, 0x2

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    new-instance v2, Ljava/lang/String;

    sub-int v11, v3, v4

    invoke-direct {v2, v1, v4, v11, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v11

    add-int v9, v3, v11

    array-length v11, v1

    invoke-static {v1, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    new-instance v11, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;

    invoke-direct {v11, v6, v2, v10, v8}, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static parseBinaryFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static parseGeobFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v13, p1, -0x1

    new-array v1, v13, [B

    const/4 v13, 0x0

    add-int/lit8 v14, p1, -0x1

    invoke-virtual {p0, v1, v13, v14}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    const/4 v13, 0x0

    invoke-static {v1, v13}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v10

    new-instance v9, Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "ISO-8859-1"

    invoke-direct {v9, v1, v13, v10, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v8, v10, 0x1

    invoke-static {v1, v8, v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v7

    new-instance v6, Ljava/lang/String;

    sub-int v13, v7, v8

    invoke-direct {v6, v1, v8, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v13

    add-int v4, v7, v13

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    new-instance v2, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v2, v1, v4, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v13

    add-int v12, v3, v13

    array-length v13, v1

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    new-instance v13, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;

    invoke-direct {v13, v9, v6, v2, v11}, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static parseId3Header(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v12, 0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    const/16 v6, 0x49

    if-ne v2, v6, :cond_0

    const/16 v6, 0x44

    if-ne v3, v6, :cond_0

    const/16 v6, 0x33

    if-eq v4, v6, :cond_1

    :cond_0
    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    const/4 v6, 0x4

    if-le v0, v6, :cond_2

    add-int/lit8 v6, v0, -0x4

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    sub-int/2addr v5, v0

    :cond_3
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, -0xa

    :cond_4
    return v5
.end method

.method private static parsePrivFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v6, 0x0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v6, p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v2

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v1, v0, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v3}, Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static parseTextInformationFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, p1, -0x1

    new-array v1, v5, [B

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v1, v6, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v1, v6, v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v6, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v5, Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p2, v2}, Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static parseTxxxFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v1, v9, v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    invoke-static {v1, v7, v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v6

    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    invoke-direct {v5, v1, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v8, Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;

    invoke-direct {v8, v2, v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parse([BI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([BI)V

    invoke-static {v10}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseId3Header(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v12

    :goto_0
    if-lez v12, :cond_0

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v8

    const/4 v13, 0x1

    if-gt v8, v13, :cond_1

    :cond_0
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    return-object v13

    :cond_1
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/16 v13, 0x54

    if-ne v4, v13, :cond_2

    const/16 v13, 0x58

    if-ne v5, v13, :cond_2

    const/16 v13, 0x58

    if-ne v6, v13, :cond_2

    const/16 v13, 0x58

    if-ne v7, v13, :cond_2

    :try_start_0
    invoke-static {v10, v8}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseTxxxFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;

    move-result-object v3

    :goto_1
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v8, 0xa

    sub-int/2addr v12, v13

    goto :goto_0

    :cond_2
    const/16 v13, 0x50

    if-ne v4, v13, :cond_3

    const/16 v13, 0x52

    if-ne v5, v13, :cond_3

    const/16 v13, 0x49

    if-ne v6, v13, :cond_3

    const/16 v13, 0x56

    if-ne v7, v13, :cond_3

    invoke-static {v10, v8}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parsePrivFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/16 v13, 0x47

    if-ne v4, v13, :cond_4

    const/16 v13, 0x45

    if-ne v5, v13, :cond_4

    const/16 v13, 0x4f

    if-ne v6, v13, :cond_4

    const/16 v13, 0x42

    if-ne v7, v13, :cond_4

    invoke-static {v10, v8}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseGeobFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/16 v13, 0x41

    if-ne v4, v13, :cond_5

    const/16 v13, 0x50

    if-ne v5, v13, :cond_5

    const/16 v13, 0x49

    if-ne v6, v13, :cond_5

    const/16 v13, 0x43

    if-ne v7, v13, :cond_5

    invoke-static {v10, v8}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseApicFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/16 v13, 0x54

    if-ne v4, v13, :cond_6

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "%c%c%c%c"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseTextInformationFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;

    move-result-object v3

    goto :goto_1

    :cond_6
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "%c%c%c%c"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseBinaryFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_1

    :catch_0
    move-exception v2

    new-instance v13, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v13, v2}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v13
.end method
