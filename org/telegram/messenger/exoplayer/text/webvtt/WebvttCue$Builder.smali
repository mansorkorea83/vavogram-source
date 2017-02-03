.class public final Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
.super Ljava/lang/Object;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebvttCueBuilder"


# instance fields
.field private endTime:J

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private position:F

.field private positionAnchor:I

.field private startTime:J

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->reset()V

    return-void
.end method

.method private derivePositionAnchorFromAlignment()Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$1;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "WebvttCueBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    :pswitch_0
    iput v3, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public build()Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue;
    .locals 14

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->derivePositionAnchorFromAlignment()Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->startTime:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->endTime:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget v8, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->line:F

    iget v9, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->lineType:I

    iget v10, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    iget v12, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iget v13, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->width:F

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v1
.end method

.method public reset()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    const/4 v0, 0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->startTime:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->endTime:J

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->line:F

    iput v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->lineType:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    iput v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->width:F

    return-void
.end method

.method public setEndTime(J)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->endTime:J

    return-object p0
.end method

.method public setLine(F)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->line:F

    return-object p0
.end method

.method public setLineAnchor(I)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public setLineType(I)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->lineType:I

    return-object p0
.end method

.method public setPosition(F)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    return-object p0
.end method

.method public setPositionAnchor(I)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public setStartTime(J)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->startTime:J

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setWidth(F)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->width:F

    return-object p0
.end method
