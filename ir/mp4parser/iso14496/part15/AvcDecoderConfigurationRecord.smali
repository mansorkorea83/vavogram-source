.class public Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;
.super Ljava/lang/Object;
.source "AvcDecoderConfigurationRecord.java"


# instance fields
.field public avcLevelIndication:I

.field public avcProfileIndication:I

.field public bitDepthChromaMinus8:I

.field public bitDepthChromaMinus8PaddingBits:I

.field public bitDepthLumaMinus8:I

.field public bitDepthLumaMinus8PaddingBits:I

.field public chromaFormat:I

.field public chromaFormatPaddingBits:I

.field public configurationVersion:I

.field public hasExts:Z

.field public lengthSizeMinusOne:I

.field public lengthSizeMinusOnePaddingBits:I

.field public numberOfSequenceParameterSetsPaddingBits:I

.field public pictureParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public profileCompatibility:I

.field public sequenceParameterSetExts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public sequenceParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x1f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    iput-boolean v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    iput v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    const/16 v0, 0x3f

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    const/16 v15, 0x3f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->configurationVersion:I

    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcLevelIndication:I

    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v8, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    int-to-long v6, v15

    const/4 v3, 0x0

    :goto_1
    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v15, v16, v6

    if-ltz v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x6e

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x7a

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x90

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    :cond_1
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    int-to-long v4, v15

    const/4 v3, 0x0

    :goto_2
    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v15, v16, v4

    if-ltz v15, :cond_4

    :goto_3
    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    new-array v14, v13, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    new-array v10, v9, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    new-array v12, v11, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    goto :goto_3
.end method


# virtual methods
.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x3

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    invoke-virtual {v0, v4, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    invoke-virtual {v0, v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    invoke-virtual {v0, v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x7a

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x90

    if-ne v4, v5, :cond_1

    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v4, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v5, v3

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v5, v1

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v5, v2

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method public getContentSize()J
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x2

    const-wide/16 v4, 0x5

    add-long/2addr v4, v10

    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    add-long/2addr v4, v10

    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x64

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x7a

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x90

    if-ne v3, v6, :cond_1

    :cond_0
    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_1
    return-wide v4

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    add-long/2addr v4, v8

    array-length v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-long/2addr v4, v8

    array-length v6, v0

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-long/2addr v4, v8

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_2
.end method

.method public getPPS()[Ljava/lang/String;
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string/jumbo v0, "not parsable"

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x1

    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v5, v3, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v5}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getPictureParameterSetsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSPS()[Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string/jumbo v0, "not parsable"

    :try_start_0
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x1

    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v5, v2, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v4, v5}, Lcom/googlecode/mp4parser/authoring/tracks/CleanInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getSequenceParameterSetExtsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AvcDecoderConfigurationRecord{configurationVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->configurationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avcProfileIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", profileCompatibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->profileCompatibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avcLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lengthSizeMinusOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasExts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chromaFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitDepthLumaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitDepthChromaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lengthSizeMinusOnePaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numberOfSequenceParameterSetsPaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chromaFormatPaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitDepthLumaMinus8PaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitDepthChromaMinus8PaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
