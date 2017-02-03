.class final Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
.super Ljava/lang/Object;
.source "VideoTagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvcSequenceHeaderData"
.end annotation


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->initializationData:Ljava/util/List;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->nalUnitLengthFieldLength:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->pixelWidthAspectRatio:F

    iput p3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->width:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->height:I

    return-void
.end method
