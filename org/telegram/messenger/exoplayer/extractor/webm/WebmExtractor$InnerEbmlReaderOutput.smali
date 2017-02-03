.class final Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlReaderOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->binaryElement(IILorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->endMasterElement(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->floatElement(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->getElementType(I)I

    move-result v0

    return v0
.end method

.method public integerElement(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->integerElement(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->isLevel1Element(I)Z

    move-result v0

    return v0
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->startMasterElement(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->stringElement(ILjava/lang/String;)V

    return-void
.end method
