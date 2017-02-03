.class final Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;
.super Ljava/lang/Object;
.source "WebmExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DISPLAY_UNIT_PIXELS:I


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public encryptionKeyId:[B

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public type:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayUnit:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->channelCount:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleRate:I

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecDelayNs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->seekPreRollNs:J

    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private static parseAvcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v7, 0x4

    :try_start_0
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v7, 0x1

    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Error parsing AVC codec private"

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v6, v7, 0x1f

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private static parseFourCcVc1Private(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v7, 0x10

    :try_start_0
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    const-wide/32 v8, 0x31435657

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported FourCC compression type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Error parsing FourCC VC1 codec private"

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    add-int/lit8 v6, v7, 0x14

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move v5, v6

    :goto_0
    array-length v7, v0

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_2

    aget-byte v7, v0, v5

    if-nez v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v0, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v0, v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_1

    array-length v7, v0

    invoke-static {v0, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static parseHevcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v12, 0x15

    :try_start_0
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    and-int/lit8 v8, v12, 0x3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_1

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v12, v9, 0x4

    add-int/2addr v2, v12

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    new-array v0, v2, [B

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_3

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v11, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    sget-object v12, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v13, 0x0

    sget-object v14, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v14, v14

    invoke-static {v12, v13, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v12, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v12, v12

    add-int/2addr v1, v12

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    invoke-static {v12, v13, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v9

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_4

    :catch_0
    move-exception v4

    new-instance v12, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v13, "Error parsing HEVC codec private"

    invoke-direct {v12, v13}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private static parseMsAcmCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v4, 0xfffe

    if-ne v1, v4, :cond_3

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v3, "Error parsing MS/ACM codec private"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    :try_start_0
    aget-byte v8, p0, v8

    if-eq v8, v10, :cond_0

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v2, 0x1

    const/4 v6, 0x0

    move v3, v2

    :goto_0
    :try_start_1
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_1

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v8, p0, v3

    add-int/2addr v6, v8

    const/4 v7, 0x0

    move v3, v2

    :goto_1
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_2

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    aget-byte v8, p0, v3

    add-int/2addr v7, v8

    aget-byte v8, p0, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    new-array v5, v6, [B

    const/4 v8, 0x0

    invoke-static {p0, v2, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    aget-byte v8, p0, v2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    add-int/2addr v2, v7

    aget-byte v8, p0, v2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    array-length v8, p0

    sub-int/2addr v8, v2

    new-array v4, v8, [B

    const/4 v8, 0x0

    array-length v9, p0

    sub-int/2addr v9, v2

    invoke-static {p0, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public initializeOutput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;IJ)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v12, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v4, "Unrecognized codec identifier."

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    const-string/jumbo v6, "V_VP8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "V_VP9"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "V_MPEG2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v6, "A_VORBIS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v6, "A_OPUS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "A_AAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v6, "A_MPEG/L3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v6, "A_AC3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v6, "A_EAC3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v6, "A_TRUEHD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v6, "A_DTS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v6, "A_DTS/EXPRESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v6, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v6, "A_FLAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v6, "A_MS/ACM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v6, "A_PCM/INT/LIT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v6, "S_TEXT/UTF8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v6, "S_VOBSUB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v6, "S_HDMV/PGS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    :cond_1
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->channelCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v25

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    return-void

    :pswitch_1
    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v3, "video/mpeg2"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v3, "video/mp4v-es"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    if-nez v2, :cond_2

    const/4 v10, 0x0

    :goto_3
    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_3

    :pswitch_4
    const-string/jumbo v3, "video/avc"

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->parseAvcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    goto :goto_1

    :pswitch_5
    const-string/jumbo v3, "video/hevc"

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->parseHevcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo v3, "video/wvc1"

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->parseFourCcVc1Private(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_7
    const-string/jumbo v3, "audio/vorbis"

    const/16 v5, 0x2000

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v3, "audio/opus"

    const/16 v5, 0x1680

    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecDelayNs:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    const-string/jumbo v3, "audio/mp4a-latm"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_a
    const-string/jumbo v3, "audio/mpeg"

    const/16 v5, 0x1000

    goto/16 :goto_1

    :pswitch_b
    const-string/jumbo v3, "audio/ac3"

    goto/16 :goto_1

    :pswitch_c
    const-string/jumbo v3, "audio/eac3"

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v3, "audio/true-hd"

    goto/16 :goto_1

    :pswitch_e
    const-string/jumbo v3, "audio/vnd.dts"

    goto/16 :goto_1

    :pswitch_f
    const-string/jumbo v3, "audio/vnd.dts.hd"

    goto/16 :goto_1

    :pswitch_10
    const-string/jumbo v3, "audio/x-flac"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_11
    const-string/jumbo v3, "audio/raw"

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->parseMsAcmCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v4, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getPcmEncoding(I)I

    move-result v12

    if-nez v12, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_12
    const-string/jumbo v3, "audio/raw"

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getPcmEncoding(I)I

    move-result v12

    if-nez v12, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_13
    const-string/jumbo v3, "application/x-subrip"

    goto/16 :goto_1

    :pswitch_14
    const-string/jumbo v3, "application/vobsub"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_15
    const-string/jumbo v3, "application/pgs"

    goto/16 :goto_1

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayUnit:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    :goto_5
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    :cond_5
    const/high16 v24, -0x4080

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    div-float v24, v2, v4

    :cond_6
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    move/from16 v21, v0

    const/16 v23, -0x1

    move-object v15, v3

    move/from16 v17, v5

    move-wide/from16 v18, p3

    move-object/from16 v22, v10

    invoke-static/range {v14 .. v24}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v25

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    goto :goto_5

    :cond_9
    const-string/jumbo v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v14, v3

    move-wide/from16 v16, p3

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v25

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "application/pgs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v14, v3

    move-wide/from16 v16, p3

    move-object/from16 v18, v10

    invoke-static/range {v13 .. v19}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createImageFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v25

    goto/16 :goto_2

    :cond_c
    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v4, "Unexpected MIME type."

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_5
        -0x7ce7f3b0 -> :sswitch_3
        -0x76567dc0 -> :sswitch_14
        -0x6a615338 -> :sswitch_f
        -0x672350af -> :sswitch_9
        -0x585f4fcd -> :sswitch_c
        -0x51dc40b2 -> :sswitch_8
        -0x2016c535 -> :sswitch_4
        -0x2016c4e5 -> :sswitch_6
        -0x19552dbd -> :sswitch_17
        -0x1538b2ba -> :sswitch_12
        0x3c02325 -> :sswitch_b
        0x3c02353 -> :sswitch_d
        0x3c030c5 -> :sswitch_10
        0x4e86155 -> :sswitch_0
        0x4e86156 -> :sswitch_1
        0x5e8da3e -> :sswitch_18
        0x2056f406 -> :sswitch_11
        0x2b453ce4 -> :sswitch_15
        0x32fdf009 -> :sswitch_7
        0x54c61e47 -> :sswitch_16
        0x6bd6c624 -> :sswitch_2
        0x7446132a -> :sswitch_e
        0x7446b0a6 -> :sswitch_13
        0x744ad97d -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
