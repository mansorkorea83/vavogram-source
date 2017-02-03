.class final Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

.field private final extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer/extractor/Extractor;Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    :cond_0
    return-void
.end method

.method public selectExtractor(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    :try_start_0
    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    if-nez v1, :cond_3

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;-><init>([Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    throw v1

    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    throw v1

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    goto :goto_0
.end method
