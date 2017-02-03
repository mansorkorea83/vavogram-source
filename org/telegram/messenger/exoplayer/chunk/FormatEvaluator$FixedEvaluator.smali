.class public final Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$FixedEvaluator;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedEvaluator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public evaluate(Ljava/util/List;J[Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lorg/telegram/messenger/exoplayer/chunk/Format;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p4, v0

    iput-object v0, p5, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-void
.end method
