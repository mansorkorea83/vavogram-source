.class public final Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;
.super Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;
.source "Eia608TrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final MAX_SAMPLE_READAHEAD_US:I = 0x4c4b40

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private caption:Ljava/lang/String;

.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final eia608Parser:Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private lastRenderedCaption:Ljava/lang/String;

.field private final pendingCaptionLists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;",
            ">;"
        }
    .end annotation
.end field

.field private repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

.field private final sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

.field private final textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

.field private final textRendererHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/text/TextRenderer;Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Lorg/telegram/messenger/exoplayer/SampleSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;)V

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private clearPendingSample()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    return-void
.end method

.method private consumeCaptionList(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

    array-length v1, v6

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;

    aget-object v0, v6, v3

    iget v6, v0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaption;->type:I

    if-nez v6, :cond_7

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    if-ne v1, v5, :cond_3

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->isRepeatable()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    :goto_2
    if-eqz v4, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    iget-byte v6, v6, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    iget-byte v7, v2, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    iget-byte v6, v6, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    iget-byte v7, v2, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    if-ne v6, v7, :cond_4

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    :cond_5
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->isMiscCode()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->handleMiscCode(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->isPreambleAddressCode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->handlePreambleAddressCode()V

    goto :goto_3

    :cond_7
    check-cast v0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionText;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->handleText(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionText;)V

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    :cond_9
    iget v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v6, v5, :cond_a

    iget v5, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    :cond_a
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->getDisplayCaption()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDisplayCaption()Ljava/lang/String;
    .locals 12

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3

    move v2, v7

    :goto_1
    if-ne v0, v7, :cond_2

    if-nez v2, :cond_0

    :cond_2
    if-eqz v2, :cond_4

    add-int/lit8 v1, v0, -0x1

    :goto_2
    iget v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move v2, v8

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    move v4, v1

    const/4 v3, 0x0

    :goto_3
    iget v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    if-ge v3, v6, :cond_6

    if-eq v4, v11, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\n"

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-eq v4, v11, :cond_7

    add-int/lit8 v5, v4, 0x1

    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    sub-int v7, v1, v5

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private handleMiscCode(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iput v4, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    :cond_1
    iget-byte v0, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-ne v0, v3, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->getDisplayCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->maybeAppendNewline()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private handlePreambleAddressCode()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->maybeAppendNewline()V

    return-void
.end method

.method private handleText(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionText;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionText;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private invokeRenderer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->lastRenderedCaption:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->lastRenderedCaption:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRendererInternal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    new-instance v1, Lorg/telegram/messenger/exoplayer/text/Cue;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    goto :goto_0
.end method

.method private isSamplePending()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAppendNewline()V
    .locals 4

    const/16 v3, 0xa

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private maybeParsePendingSample(J)V
    .locals 7

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    const-wide/32 v4, 0x4c4b40

    add-long/2addr v4, p1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->parse(Lorg/telegram/messenger/exoplayer/SampleHolder;)Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->clearPendingSample()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setCaptionMode(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, -0x3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->isSamplePending()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->maybeParsePendingSample(J)V

    :cond_0
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    if-eqz v4, :cond_2

    move v1, v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->isSamplePending()Z

    move-result v4

    if-nez v4, :cond_5

    if-ne v1, v3, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->maybeParsePendingSample(J)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->consumeCaptionList(Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;)V

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->decodeOnly:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRenderer(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_4

    :cond_6
    return-void
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRendererInternal(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608Parser;->canParse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDiscontinuity(J)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lorg/telegram/messenger/exoplayer/text/eia608/ClosedCaptionCtrl;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->clearPendingSample()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRenderer(Ljava/lang/String;)V

    return-void
.end method

.method protected onEnabled(IJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onEnabled(IJZ)V

    return-void
.end method
