.class Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->release()V

    return-void
.end method
