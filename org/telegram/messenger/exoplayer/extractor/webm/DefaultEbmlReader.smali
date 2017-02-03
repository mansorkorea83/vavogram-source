.class final Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    invoke-interface {p1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    aget-byte v2, v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-gt v1, v5, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v2, v0

    return-wide v2

    :cond_0
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readFloat(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->readInteger(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)J

    move-result-wide v2

    const/4 v4, 0x4

    if-ne p2, v4, :cond_0

    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v0, v4

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method private readInteger(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 v1, 0x8

    shl-long v4, v2, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->scratch:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private readString(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->elementEndPosition:J
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->access$000(Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->elementId:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;->access$100(Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->endMasterElement(I)V

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, p1, v1, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;ZZI)J

    move-result-wide v8

    const-wide/16 v0, -0x2

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v8

    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    long-to-int v0, v8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v1, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->getElementType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid element type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    add-long v6, v2, v0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    const/4 v5, 0x0

    invoke-direct {v1, v4, v6, v7, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$MasterElement;-><init>(IJLorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->startMasterElement(IJJ)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid integer size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->readInteger(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->integerElement(IJ)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid float size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->readFloat(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->floatElement(ID)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "String element size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->readString(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-interface {v0, v1, v4, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;->binaryElement(IILorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->elementState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->reset()V

    return-void
.end method
