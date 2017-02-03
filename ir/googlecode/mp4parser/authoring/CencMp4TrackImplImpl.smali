.class public Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;
.super Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.source "CencMp4TrackImplImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private defaultKeyId:Ljava/util/UUID;

.field private sampleEncryptionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;-><init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V

    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v28

    check-cast v28, Lcom/coremedia/iso/boxes/SchemeTypeBox;

    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_1

    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getSchemeType()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "cenc"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1

    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getSchemeType()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "cbc1"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1

    :cond_0
    new-instance v40, Ljava/lang/AssertionError;

    const-string/jumbo v41, "Track must be CENC (cenc or cbc1) encrypted"

    invoke-direct/range {v40 .. v41}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v40

    :cond_1
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v34

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    const-class v41, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface/range {v40 .. v41}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/Box;

    invoke-interface/range {v40 .. v40}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    const-class v41, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-interface/range {v40 .. v41}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v40, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_5
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v44

    cmp-long v40, v44, v34

    if-nez v40, :cond_5

    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v32

    check-cast v32, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;

    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefault_KID()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->defaultKeyId:Ljava/util/UUID;

    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v40

    if-eqz v40, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/Box;

    invoke-interface/range {v40 .. v40}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v8

    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v10

    :goto_0
    new-instance v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;-><init>(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;Lcom/coremedia/iso/boxes/Container;)V

    invoke-virtual/range {v40 .. v40}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->invoke()Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->getSaio()Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    move-result-object v21

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->getSaiz()Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    move-result-object v25

    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_7

    if-nez v21, :cond_7

    new-instance v40, Ljava/lang/AssertionError;

    invoke-direct/range {v40 .. v40}, Ljava/lang/AssertionError;-><init>()V

    throw v40

    :cond_6
    move-object/from16 v8, v17

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v24

    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_8

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v40, v0

    const-class v43, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v43

    move/from16 v0, v40

    move/from16 v1, v43

    if-eq v0, v1, :cond_8

    new-instance v40, Ljava/lang/AssertionError;

    invoke-direct/range {v40 .. v40}, Ljava/lang/AssertionError;-><init>()V

    throw v40

    :cond_8
    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_9

    if-nez v25, :cond_9

    new-instance v40, Ljava/lang/AssertionError;

    invoke-direct/range {v40 .. v40}, Ljava/lang/AssertionError;-><init>()V

    throw v40

    :cond_9
    const-class v40, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v38

    const/16 v27, 0x0

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v15, v0, :cond_5

    move-object/from16 v0, v38

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v20

    aget-wide v22, v24, v15

    const-wide/16 v18, 0x0

    move/from16 v16, v27

    :goto_2
    add-int v40, v27, v20

    move/from16 v0, v16

    move/from16 v1, v40

    if-lt v0, v1, :cond_a

    add-long v44, v10, v22

    move-wide/from16 v0, v44

    move-wide/from16 v2, v18

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v39

    move/from16 v16, v27

    :goto_3
    add-int v40, v27, v20

    move/from16 v0, v16

    move/from16 v1, v40

    if-lt v0, v1, :cond_b

    add-int v27, v27, v20

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_a
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v18, v18, v44

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v43

    int-to-long v0, v6

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v39

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_c
    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v32

    check-cast v32, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;

    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefault_KID()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->defaultKeyId:Ljava/util/UUID;

    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stco[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    if-nez v9, :cond_d

    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/co64[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v40

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v41

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->blowup(I)[J

    move-result-object v12

    new-instance v41, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/Container;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;-><init>(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;Lcom/coremedia/iso/boxes/Container;)V

    invoke-virtual/range {v41 .. v41}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->invoke()Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    move-result-object v26

    #getter for: Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    invoke-static/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->access$0(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;)Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    move-result-object v21

    #getter for: Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    invoke-static/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->access$1(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;)Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/MovieBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v33

    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    const/16 v41, 0x0

    aget-wide v22, v40, v41

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getDefaultSampleInfoSize()I

    move-result v40

    if-lez v40, :cond_f

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getDefaultSampleInfoSize()I

    move-result v41

    mul-int v40, v40, v41

    add-int v29, v29, v40

    :cond_e
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    move-wide/from16 v3, v40

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v41

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_f
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_e

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleInfoSizes()[S

    move-result-object v40

    aget-short v40, v40, v15

    add-int v29, v29, v40

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    array-length v0, v12

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_14

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    array-length v0, v12

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v15, v0, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    aget-wide v22, v40, v15

    const-wide/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getDefaultSampleInfoSize()I

    move-result v40

    if-lez v40, :cond_12

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    mul-long v40, v40, v42

    add-long v30, v30, v40

    :cond_11
    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    move-wide/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    cmp-long v40, v40, v42

    if-ltz v40, :cond_13

    int-to-long v0, v14

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v14, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_12
    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    cmp-long v40, v40, v42

    if-gez v40, :cond_11

    add-int v40, v14, v16

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v30, v30, v40

    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    :cond_13
    add-int v40, v14, v16

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v40

    move/from16 v0, v40

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v13, v6, v7}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_14
    new-instance v40, Ljava/lang/RuntimeException;

    const-string/jumbo v41, "Number of saio offsets must be either 1 or number of chunks"

    invoke-direct/range {v40 .. v41}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v40
.end method

.method private parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    .locals 9

    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    invoke-direct {v0}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    new-array v3, p1, [B

    iput-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    int-to-long v4, p1

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    new-array v3, v2, [Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    iput-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->createPair(IJ)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDefaultKeyId()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->defaultKeyId:Ljava/util/UUID;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enc("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleEncryptionEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    return-object v0
.end method

.method public hasSubSampleEncryption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CencMp4TrackImpl{handler=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
