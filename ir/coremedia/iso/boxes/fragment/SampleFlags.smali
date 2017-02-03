.class public Lcom/coremedia/iso/boxes/fragment/SampleFlags;
.super Ljava/lang/Object;
.source "SampleFlags.java"


# instance fields
.field private is_leading:B

.field private reserved:B

.field private sampleDegradationPriority:I

.field private sampleDependsOn:B

.field private sampleHasRedundancy:B

.field private sampleIsDependedOn:B

.field private sampleIsDifferenceSample:Z

.field private samplePaddingValue:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/32 v2, -0x10000000

    and-long/2addr v2, v0

    const/16 v4, 0x1c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    const-wide/32 v2, 0xc000000

    and-long/2addr v2, v0

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    const-wide/32 v2, 0x3000000

    and-long/2addr v2, v0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    const-wide/32 v2, 0xc00000

    and-long/2addr v2, v0

    const/16 v4, 0x16

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    const-wide/32 v2, 0x300000

    and-long/2addr v2, v0

    const/16 v4, 0x14

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    const-wide/32 v2, 0xe0000

    and-long/2addr v2, v0

    const/16 v4, 0x11

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
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

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    iget v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    iget-boolean v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    :cond_a
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    const-wide/16 v0, 0x0

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    shl-int/lit8 v2, v2, 0x1c

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    shl-int/lit8 v2, v2, 0x1a

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    shl-int/lit8 v2, v2, 0x14

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getReserved()I
    .locals 1

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    return v0
.end method

.method public getSampleDegradationPriority()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return v0
.end method

.method public getSampleDependsOn()I
    .locals 1

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    return v0
.end method

.method public getSampleHasRedundancy()I
    .locals 1

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    return v0
.end method

.method public getSampleIsDependedOn()I
    .locals 1

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    return v0
.end method

.method public getSamplePaddingValue()I
    .locals 1

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    add-int v0, v1, v2

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSampleIsDifferenceSample()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    return v0
.end method

.method public setReserved(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    return-void
.end method

.method public setSampleDegradationPriority(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return-void
.end method

.method public setSampleDependsOn(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    return-void
.end method

.method public setSampleHasRedundancy(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    return-void
.end method

.method public setSampleIsDependedOn(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    return-void
.end method

.method public setSampleIsDifferenceSample(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    return-void
.end method

.method public setSamplePaddingValue(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SampleFlags{reserved="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isLeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDepOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", padValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDiffSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", degradPrio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
