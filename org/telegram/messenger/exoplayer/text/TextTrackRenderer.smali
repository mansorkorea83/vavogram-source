.class public final Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;
.super Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;
.source "TextTrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEFAULT_PARSER_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/exoplayer/text/SubtitleParser;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MSG_UPDATE_OVERLAY:I


# instance fields
.field private final formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

.field private nextSubtitleEventIndex:I

.field private parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

.field private parserIndex:I

.field private parserThread:Landroid/os/HandlerThread;

.field private subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

.field private final subtitleParsers:[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

.field private final textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

.field private final textRendererHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.text.webvtt.WebvttParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.text.ttml.TtmlParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.text.webvtt.Mp4WebvttParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.text.subrip.SubripParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.text.tx3g.Tx3gParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/SampleSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer/SampleSource;Lorg/telegram/messenger/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;-><init>([Lorg/telegram/messenger/exoplayer/SampleSource;)V

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->textRendererHandler:Landroid/os/Handler;

    if-eqz p4, :cond_0

    array-length v2, p4

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array p4, v2, [Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    const/4 v1, 0x0

    :goto_1
    array-length v2, p4

    if-ge v1, v2, :cond_2

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    aput-object v2, p4, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected error creating default parser"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected error creating default parser"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    new-instance v2, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    return-void
.end method

.method private clearTextRenderer()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->updateTextRenderer(Ljava/util/List;)V

    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->getEventTime(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getParserIndex(Lorg/telegram/messenger/exoplayer/MediaFormat;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    aget-object v1, v1, v0

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/text/SubtitleParser;->canParse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private invokeRendererInternalCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->textRenderer:Lorg/telegram/messenger/exoplayer/text/TextRenderer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    return-void
.end method

.method private updateTextRenderer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->textRendererHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->textRendererHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->invokeRendererInternalCues(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    if-nez v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->getAndClearResult()Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v6, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;

    invoke-direct {v6, v0}, Lorg/telegram/messenger/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getNextEventTime()J

    move-result-wide v4

    :goto_1
    cmp-long v6, v4, p1

    if-gtz v6, :cond_3

    iget v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getNextEventTime()J

    move-result-wide v4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->startTimeUs:J

    cmp-long v6, v6, p1

    if-gtz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->getNextEventTimeIndex(J)I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;->getCues(J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->updateTextRenderer(Ljava/util/List;)V

    :cond_5
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->isParsing()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->getSampleHolder()Lorg/telegram/messenger/exoplayer/SampleHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, p1, p2, v6, v2}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->readSource(JLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I

    move-result v1

    const/4 v6, -0x4

    if-ne v1, v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer/MediaFormatHolder;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->setFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    goto :goto_0

    :cond_6
    const/4 v6, -0x3

    if-ne v1, v6, :cond_7

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->startParseOperation()V

    goto/16 :goto_0

    :cond_7
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    goto/16 :goto_0
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

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->invokeRendererInternalCues(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected handlesTrack(Lorg/telegram/messenger/exoplayer/MediaFormat;)Z
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getParserIndex(Lorg/telegram/messenger/exoplayer/MediaFormat;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEnded()Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getNextEventTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->clearTextRenderer()V

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onDisabled()V

    return-void
.end method

.method protected onDiscontinuity(J)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer/text/PlayableSubtitle;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->clearTextRenderer()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;->flush()V

    :cond_0
    return-void
.end method

.method protected onEnabled(IJZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer/SampleSourceTrackRenderer;->onEnabled(IJZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->getParserIndex(Lorg/telegram/messenger/exoplayer/MediaFormat;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserIndex:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "textParser"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lorg/telegram/messenger/exoplayer/text/SubtitleParser;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserIndex:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;-><init>(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/text/SubtitleParser;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TextTrackRenderer;->parserHelper:Lorg/telegram/messenger/exoplayer/text/SubtitleParserHelper;

    return-void
.end method
