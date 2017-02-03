.class final Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
.super Ljava/lang/Object;
.source "TtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameAndTickRate"
.end annotation


# instance fields
.field final effectiveFrameRate:F

.field final subFrameRate:I

.field final tickRate:I


# direct methods
.method constructor <init>(FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    iput p2, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    return-void
.end method
