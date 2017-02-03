.class public Lorg/telegram/messenger/exoplayer/chunk/Format;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;
    }
.end annotation


# instance fields
.field public final audioChannels:I

.field public final audioSamplingRate:I

.field public final bitrate:I

.field public final codecs:Ljava/lang/String;

.field public final frameRate:F

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->frameRate:F

    iput p6, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioChannels:I

    iput p7, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioSamplingRate:I

    iput p8, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iput-object p9, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->language:Ljava/lang/String;

    iput-object p10, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
