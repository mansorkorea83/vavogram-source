.class final Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final line:F

.field public final lineType:I

.field public final position:F

.field public final width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, -0x8000

    invoke-direct {p0, v1, v1, v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;-><init>(FFIF)V

    return-void
.end method

.method public constructor <init>(FFIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;->position:F

    iput p2, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;->line:F

    iput p3, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;->lineType:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;->width:F

    return-void
.end method
