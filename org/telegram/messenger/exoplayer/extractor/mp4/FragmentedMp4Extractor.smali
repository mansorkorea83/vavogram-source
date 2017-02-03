.class public Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    }
.end annotation


# static fields
.field private static final FLAG_SIDELOADED:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B = null

#the value of this static final field might be set in the static constructor
.field private static final SAMPLE_GROUP_TYPE_seig:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private final encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "seig"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xa2t
        0x39t
        0x4ft
        0x52t
        0x5at
        0x9bt
        0x4ft
        0x14t
        0xa2t
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        0x8dt
        0xf4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer/extractor/mp4/Track;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer/extractor/mp4/Track;)V
    .locals 4

    const/16 v3, 0x10

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->flags:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I
    .locals 12

    const/4 v10, 0x0

    iget-object v7, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-object v3, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v2, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    if-eqz v9, :cond_0

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    :goto_0
    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v11, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v6, v9, v11

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    if-eqz v6, :cond_1

    const/16 v9, 0x80

    :goto_1
    or-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v11, v10

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    invoke-interface {v1, v3, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    if-nez v6, :cond_2

    add-int/lit8 v9, v8, 0x1

    :goto_2
    return v9

    :cond_0
    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v9, v2

    goto :goto_0

    :cond_1
    move v9, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/4 v9, -0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v9, v4, 0x6

    add-int/lit8 v5, v9, 0x2

    invoke-interface {v1, v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    add-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v5

    goto :goto_2
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v9, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget v9, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v8, v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v6, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    move-object v1, v4

    move-wide v2, v6

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private onContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget v0, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onLeafAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    :cond_2
    iget v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {p0, v1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseEmsg(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    return-void
.end method

.method private onMoovContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    const/16 v22, 0x1

    :goto_0
    const-string/jumbo v23, "Unexpected moov box."

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(ZLjava/lang/Object;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_4

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v0, v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    if-nez v7, :cond_0

    new-instance v7, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v7}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    :cond_0
    iget-object v0, v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v21

    if-nez v21, :cond_3

    const-string/jumbo v22, "FragmentedMp4Extractor"

    const-string/jumbo v23, "Skipped pssh atom (failed to extract uuid)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    :cond_3
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v22

    new-instance v23, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v24, "video/mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V

    :cond_5
    sget v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v8, -0x1

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v15

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_8

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mehd:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v8

    goto :goto_4

    :cond_8
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v11, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    move/from16 v22, v0

    sget v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    sget v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v8, v9, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-nez v22, :cond_c

    const/4 v10, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v22, v0

    new-instance v24, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    :goto_7
    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v10, v0, :cond_e

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/16 v22, 0x1

    :goto_9
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_7

    :cond_d
    const/16 v22, 0x0

    goto :goto_9

    :cond_e
    return-void
.end method

.method private static parseMehd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 4

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseMoof(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_0

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseSaio(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v5, 0x1

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-eq v0, v5, :cond_1

    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected saio entry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    goto :goto_0
.end method

.method private static parseSaiz(Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    iget v10, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v4, v10, :cond_1

    new-instance v10, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Length mismatch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    const/4 v8, 0x0

    if-nez v0, :cond_3

    iget-object v5, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v8, v6

    if-le v6, v9, :cond_2

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    if-le v0, v9, :cond_5

    const/4 v7, 0x1

    :goto_2
    mul-int v10, v0, v4

    add-int/2addr v8, v10

    iget-object v10, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    return-void

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x8

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v5, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    iget v5, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v2, v5, :cond_2

    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Length mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    return-void
.end method

.method private static parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static parseSgpd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-eq v8, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-ne v8, v6, :cond_2

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    if-eq v8, v6, :cond_3

    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v7, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-ne v8, v9, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v7, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    if-lt v5, v12, :cond_5

    invoke-virtual {p1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v7, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-virtual {p1, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    if-ne v8, v6, :cond_7

    move v1, v6

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v8, 0x10

    new-array v2, v8, [B

    array-length v8, v2

    invoke-virtual {p1, v2, v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iput-boolean v6, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v1, v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    iput-object v6, p2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    :cond_7
    move v1, v7

    goto :goto_1
.end method

.method private static parseSidx(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v27

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    move-wide/from16 v16, p1

    if-nez v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    add-long v16, v16, v6

    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v18, v0

    move/from16 v0, v19

    new-array v10, v0, [J

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v23, v0

    move-wide v4, v12

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    const/high16 v6, -0x8000

    and-int v26, v6, v11

    if-eqz v26, :cond_1

    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v7, "Unhandled indirect reference"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    add-long v16, v16, v6

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    const v6, 0x7fffffff

    and-int/2addr v6, v11

    aput v6, v22, v15

    aput-wide v16, v18, v15

    aput-wide v24, v23, v15

    add-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    aget-wide v6, v23, v15

    sub-long v6, v24, v6

    aput-wide v6, v10, v15

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    aget v6, v22, v15

    int-to-long v6, v6

    add-long v16, v16, v6

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v1, v10, v2}, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v6
.end method

.method private static parseTfdt(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 4

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseTfhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v10

    and-int/lit8 v11, p2, 0x4

    if-nez v11, :cond_0

    :goto_0
    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    :goto_1
    return-object v9

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    :cond_2
    iget-object v7, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    :goto_2
    and-int/lit8 v11, v0, 0x8

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    :goto_5
    iget-object v11, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    new-instance v12, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v12, v1, v4, v6, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v12, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    goto :goto_1

    :cond_3
    iget v1, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    goto :goto_2

    :cond_4
    iget v4, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_3

    :cond_5
    iget v6, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    goto :goto_4

    :cond_6
    iget v5, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_5
.end method

.method private static parseTraf(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getChildAtomOfTypeCount(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    new-instance v20, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v21, "Trun count in traf != 1 (unsupported)."

    invoke-direct/range {v20 .. v21}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Landroid/util/SparseArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v17

    if-nez v17, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v6, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    if-eqz v15, :cond_3

    and-int/lit8 v20, p2, 0x2

    if-nez v20, :cond_3

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    :cond_3
    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v6, v7, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v20, v0

    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v21, v0

    aget-object v18, v20, v21

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    :cond_4
    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v0, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    :cond_5
    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    if-eqz v13, :cond_6

    iget-object v0, v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    :cond_6
    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sbgp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sgpd:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    if-eqz v12, :cond_7

    if-eqz v14, :cond_7

    iget-object v0, v12, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v20, v0

    sget v21, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v0, v8, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;[B)V

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private static parseTrex(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v0, v1, v3, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 35

    const/16 v4, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    invoke-static {v15}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-object v9, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_0

    iget-wide v4, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v4, v4, v32

    iput-wide v4, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    :cond_0
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    :goto_0
    iget v12, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v13, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    :cond_1
    and-int/lit16 v4, v8, 0x100

    if-eqz v4, :cond_5

    const/16 v22, 0x1

    :goto_1
    and-int/lit16 v4, v8, 0x200

    if-eqz v4, :cond_6

    const/16 v29, 0x1

    :goto_2
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_7

    const/16 v24, 0x1

    :goto_3
    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    :goto_4
    const-wide/16 v10, 0x0

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-nez v4, :cond_2

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    :cond_2
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->initTables(I)V

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v28, v0

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    move-object/from16 v17, v0

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v20, v0

    iget-object v0, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v25, v0

    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v2, p1

    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->type:I

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v4, v5, :cond_9

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_9

    const/16 v31, 0x1

    :goto_5
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    if-eqz v22, :cond_a

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    :goto_7
    if-eqz v29, :cond_b

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v27

    :goto_8
    if-nez v16, :cond_c

    if-eqz v13, :cond_c

    move/from16 v23, v12

    :goto_9
    if-eqz v18, :cond_e

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v26

    move/from16 v0, v26

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v17, v16

    :goto_a
    const-wide/16 v4, 0x3e8

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v20, v16

    aput v27, v28, v16

    shr-int/lit8 v4, v23, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f

    if-eqz v31, :cond_3

    if-nez v16, :cond_f

    :cond_3
    const/4 v4, 0x1

    :goto_b
    aput-boolean v4, v25, v16

    move/from16 v0, v21

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_9
    const/16 v31, 0x0

    goto :goto_5

    :cond_a
    iget v0, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v21, v0

    goto :goto_7

    :cond_b
    iget v0, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v27, v0

    goto :goto_8

    :cond_c
    if-eqz v24, :cond_d

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v23

    goto :goto_9

    :cond_d
    iget v0, v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v23, v0

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    aput v4, v17, v16

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    :cond_10
    iput-wide v2, v14, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return-void
.end method

.method private static parseUuid(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private processAtomEnded(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    const/16 v8, 0x8

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    :cond_1
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const/16 v5, 0x8

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    invoke-interface {p1, v8, v9, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v8, v5

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    sub-long v0, v8, v10

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v8, v9, :cond_5

    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v9, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    :cond_4
    const/4 v8, 0x2

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_5
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    sub-long v2, v8, v10

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v9, v10, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    :cond_7
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    new-instance v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v9, v10

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v10, v10, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    :cond_a
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    new-instance v8, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v9, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_b
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;J)V

    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v7, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_0

    iget-wide v8, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v8, v2

    if-gez v7, :cond_0

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x3

    iput v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_1
    return-void

    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v0, v8

    if-gez v0, :cond_3

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Offset to encryption data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    iget-object v7, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    move-wide/from16 v20, v0

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    if-gez v2, :cond_0

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Offset to end of mdat was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v14, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    if-gez v2, :cond_2

    new-instance v7, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v8, "Offset to sample data was negative."

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v7, v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    :goto_1
    const/4 v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v3, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    move/from16 v17, v0

    move-object/from16 v0, v18

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v11, v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    move-object/from16 v0, v18

    iget v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    move-object/from16 v0, v18

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v7, 0x4

    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_8

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v13, v12}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-interface {v3, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v7, v13

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_8

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_3

    :cond_8
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v4, v20, v22

    iget-boolean v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x2

    :goto_4
    iget-object v8, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    or-int v6, v7, v8

    iget-object v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->header:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v0, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v16, v0

    const/4 v9, 0x0

    iget-boolean v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_9

    iget-object v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    if-eqz v7, :cond_d

    iget-object v7, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v8, v10, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v7, v8, :cond_a

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_a
    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v7, v7, v16

    iget-object v9, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    goto :goto_6
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sbgp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sgpd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mehd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v3, v3, v3, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    :cond_0
    return-void
.end method

.method protected parseEmsg(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    return-void
.end method

.method public final read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek()V
    .locals 3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public final sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->sniffFragmented(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
