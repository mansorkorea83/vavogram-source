.class public Lorg/telegram/messenger/exoplayer/dash/mpd/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field public final adaptationSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public final startMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->id:Ljava/lang/String;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->startMs:J

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdaptationSetIndex(I)I
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->type:I

    if-ne v2, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
