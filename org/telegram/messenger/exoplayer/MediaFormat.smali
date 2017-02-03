.class public final Lorg/telegram/messenger/exoplayer/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final adaptive:Z

.field public final bitrate:I

.field public final channelCount:I

.field public final durationUs:J

.field public final encoderDelay:I

.field public final encoderPadding:I

.field private frameworkMediaFormat:Landroid/media/MediaFormat;

.field private hashCode:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxHeight:I

.field public final maxInputSize:I

.field public final maxWidth:I

.field public final mimeType:Ljava/lang/String;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final rotationDegrees:I

.field public final sampleRate:I

.field public final subsampleOffsetUs:J

.field public final trackId:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormat$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/MediaFormat$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJIIIFII",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<[B>;ZIIIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    iput p7, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    iput p8, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    iput p9, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    iput p10, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    iput p11, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    iput p12, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    if-nez p16, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p16

    :cond_0
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move/from16 v0, p17

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v0, p18

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v0, p19

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v0, p20

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v0, p21

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v0, p22

    iput v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    return-void
.end method

.method public static createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;"
        }
    .end annotation

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p9

    move-object/from16 v16, p8

    move/from16 v20, p10

    invoke-direct/range {v0 .. v22}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static createFormatForMimeType(Ljava/lang/String;Ljava/lang/String;IJ)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 23

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v22}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static createId3Format()Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "application/id3"

    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createFormatForMimeType(Ljava/lang/String;Ljava/lang/String;IJ)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createImageFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    const/4 v11, -0x1

    const/4 v12, -0x1

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v13, p6

    move-object/from16 v16, p5

    invoke-direct/range {v0 .. v22}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 9

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 23

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v13, p5

    move-wide/from16 v14, p6

    invoke-direct/range {v0 .. v22}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x4080

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;IF)",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v16, p8

    invoke-direct/range {v0 .. v22}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method private static final maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static final maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyAsAdaptive(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithDurationUs(J)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 25

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-wide/from16 v6, p1

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithFixedTrackInfo(Ljava/lang/String;IIILjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithMaxVideoDimensions(II)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 25

    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-wide/from16 v15, p1

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    iget-boolean v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    move v2, v5

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v5

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v2, v4

    goto/16 :goto_0
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-nez v2, :cond_2

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "mime"

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "language"

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "max-input-size"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "width"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "height"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "rotation-degrees"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "max-width"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "max-height"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-count"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "sample-rate"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "encoder-delay"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string/jumbo v2, "encoder-padding"

    iget v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-string/jumbo v2, "durationUs"

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    :cond_1
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    return-object v2
.end method

.method public hashCode()I
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->hashCode:I

    if-nez v2, :cond_5

    const/16 v1, 0x11

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    long-to-int v4, v4

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_2
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    long-to-int v3, v4

    add-int v1, v2, v3

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x4d5

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_4
    iput v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->hashCode:I

    :cond_5
    iget v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->hashCode:I

    return v2
.end method

.method final setFrameworkFormatV16(Landroid/media/MediaFormat;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->channelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->adaptive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->maxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->pcmEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->encoderPadding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
