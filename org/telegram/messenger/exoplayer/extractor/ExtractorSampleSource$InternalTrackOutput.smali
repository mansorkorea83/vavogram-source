.class Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
.super Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;
.source "ExtractorSampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalTrackOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    return-void
.end method


# virtual methods
.method public sampleMetadata(JIII[B)V
    .locals 1

    invoke-super/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->access$308(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)I

    return-void
.end method
