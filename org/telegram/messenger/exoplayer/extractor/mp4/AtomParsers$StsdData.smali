.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# instance fields
.field public mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field public nalUnitLengthFieldLength:I

.field public final trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    return-void
.end method
