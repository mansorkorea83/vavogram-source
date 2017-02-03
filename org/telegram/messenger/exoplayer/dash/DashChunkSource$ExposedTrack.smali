.class public final Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ExposedTrack"
.end annotation


# instance fields
.field private final adaptationSetIndex:I

.field private final adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

.field public final adaptiveMaxHeight:I

.field public final adaptiveMaxWidth:I

.field private final fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field public final trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/MediaFormat;ILorg/telegram/messenger/exoplayer/chunk/Format;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptationSetIndex:I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/MediaFormat;I[Lorg/telegram/messenger/exoplayer/chunk/Format;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptationSetIndex:I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput p4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptationSetIndex:I

    return v0
.end method


# virtual methods
.method public isAdaptive()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
