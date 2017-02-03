.class public interface abstract Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;,
        Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$RandomEvaluator;,
        Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$FixedEvaluator;,
        Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluate(Ljava/util/List;J[Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;)V
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
.end method
