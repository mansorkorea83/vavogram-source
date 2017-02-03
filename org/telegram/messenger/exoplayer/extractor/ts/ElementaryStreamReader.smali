.class abstract Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# instance fields
.field protected final output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public abstract consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
.end method

.method public abstract packetFinished()V
.end method

.method public abstract packetStarted(JZ)V
.end method

.method public abstract seek()V
.end method
