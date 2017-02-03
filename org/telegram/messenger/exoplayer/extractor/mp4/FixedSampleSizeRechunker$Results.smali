.class public final Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    return-void
.end method
