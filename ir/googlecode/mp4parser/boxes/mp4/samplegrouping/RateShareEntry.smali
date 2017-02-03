.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "RateShareEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "rash"


# instance fields
.field private discardPriority:S

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maximumBitrate:I

.field private minimumBitrate:I

.field private operationPointCut:S

.field private targetRateShare:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;

    iget-short v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    iget-short v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-short v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    iget-short v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-short v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    iget-short v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v3, 0x1

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    if-ne v2, v3, :cond_1

    const/16 v2, 0xd

    :goto_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    if-ne v2, v3, :cond_2

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_0
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    invoke-static {v0, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :cond_1
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0xb

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;->getAvailableBitrate()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;->getTargetRateShare()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public getDiscardPriority()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getMaximumBitrate()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    return v0
.end method

.method public getMinimumBitrate()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    return v0
.end method

.method public getOperationPointCut()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    return v0
.end method

.method public getTargetRateShare()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rash"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    mul-int/lit8 v1, v0, 0x1f

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    add-int v0, v1, v2

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    return-void

    :cond_1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;-><init>(IS)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0
.end method

.method public setDiscardPriority(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->discardPriority:S

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry$Entry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->entries:Ljava/util/List;

    return-void
.end method

.method public setMaximumBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->maximumBitrate:I

    return-void
.end method

.method public setMinimumBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->minimumBitrate:I

    return-void
.end method

.method public setOperationPointCut(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->operationPointCut:S

    return-void
.end method

.method public setTargetRateShare(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RateShareEntry;->targetRateShare:S

    return-void
.end method
