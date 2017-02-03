.class public Lorg/telegram/messenger/exoplayer/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final DIMEN_UNSET:F = 1.4E-45f

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000


# instance fields
.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final positionAnchor:I

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v3

    move v7, v4

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->line:F

    iput p4, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->lineType:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->lineAnchor:I

    iput p6, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->position:F

    iput p7, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->positionAnchor:I

    iput p8, p0, Lorg/telegram/messenger/exoplayer/text/Cue;->size:F

    return-void
.end method
