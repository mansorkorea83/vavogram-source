.class public Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "TemporalLayerSampleGroup.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tscl"


# instance fields
.field temporalLayerId:I

.field tlAvgBitRate:I

.field tlAvgFrameRate:I

.field tlConstantFrameRate:I

.field tlMaxBitRate:I

.field tlconstraint_indicator_flags:J

.field tllevel_idc:I

.field tlprofile_compatibility_flags:J

.field tlprofile_idc:I

.field tlprofile_space:I

.field tltier_flag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

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

    check-cast v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;

    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    iget-wide v6, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    :cond_a
    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    iget-wide v6, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    :cond_b
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    if-eq v3, v4, :cond_c

    move v1, v2

    goto :goto_0

    :cond_c
    iget v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    :cond_d
    iget-boolean v3, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    iget-boolean v4, v0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    shl-int/lit8 v2, v1, 0x6

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt48(Ljava/nio/ByteBuffer;J)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemporalLayerId()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    return v0
.end method

.method public getTlAvgBitRate()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    return v0
.end method

.method public getTlAvgFrameRate()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    return v0
.end method

.method public getTlConstantFrameRate()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    return v0
.end method

.method public getTlMaxBitRate()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    return v0
.end method

.method public getTlconstraint_indicator_flags()J
    .locals 2

    iget-wide v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    return-wide v0
.end method

.method public getTllevel_idc()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    return v0
.end method

.method public getTlprofile_compatibility_flags()J
    .locals 2

    iget-wide v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    return-wide v0
.end method

.method public getTlprofile_idc()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    return v0
.end method

.method public getTlprofile_space()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tscl"

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    add-int v0, v1, v2

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTltier_flag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    shr-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    and-int/lit8 v1, v0, 0x20

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt48(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTemporalLayerId(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    return-void
.end method

.method public setTlAvgBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    return-void
.end method

.method public setTlAvgFrameRate(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    return-void
.end method

.method public setTlConstantFrameRate(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    return-void
.end method

.method public setTlMaxBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    return-void
.end method

.method public setTlconstraint_indicator_flags(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    return-void
.end method

.method public setTllevel_idc(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    return-void
.end method

.method public setTlprofile_compatibility_flags(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    return-void
.end method

.method public setTlprofile_idc(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    return-void
.end method

.method public setTlprofile_space(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    return-void
.end method

.method public setTltier_flag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    return-void
.end method

.method public size()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TemporalLayerSampleGroup{temporalLayerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->temporalLayerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlprofile_space="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_space:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tltier_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tltier_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlprofile_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlprofile_compatibility_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlprofile_compatibility_flags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlconstraint_indicator_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlconstraint_indicator_flags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tllevel_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tllevel_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlMaxBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlMaxBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlAvgBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlConstantFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlConstantFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tlAvgFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/TemporalLayerSampleGroup;->tlAvgFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
