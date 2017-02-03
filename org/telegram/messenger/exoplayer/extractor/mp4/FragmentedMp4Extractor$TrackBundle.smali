.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# instance fields
.field public currentSampleIndex:I

.field public defaultSampleValues:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

.field public final fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

.field public final output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field public track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;)V
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    return-void
.end method
