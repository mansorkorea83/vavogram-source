.class public final Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
.super Ljava/lang/Object;
.source "OggUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageHeader"
.end annotation


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->laces:[I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->revision:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->granulePosition:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->streamSerialNumber:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSequenceNumber:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageChecksum:J

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->pageSegmentCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->headerSize:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    return-void
.end method
