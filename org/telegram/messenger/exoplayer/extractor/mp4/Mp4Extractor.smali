.class public final Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BRAND_QUICKTIME:I = 0x0

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_AFTER_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x1

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3


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

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private isQuickTime:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "qt  "

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 9

    const/4 v2, -0x1

    const-wide v0, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v8, v5

    iget v3, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v8, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    iget v8, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v3

    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    move-wide v0, v6

    move v2, v5

    goto :goto_1

    :cond_2
    return v2
.end method

.method private processAtomEnded(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v4, 0x3

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v1, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->processMoovAtom(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    iput v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v1, v4, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_3
    return-void
.end method

.method private static processFtypAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 4

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processMoovAtom(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-wide v6, 0x7fffffffffffffffL

    const/4 v5, 0x0

    sget v19, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_udta:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseUdta(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v5

    :cond_0
    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    move/from16 v19, v0

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    sget v19, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v19

    const-wide/16 v20, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-static {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    move-result-object v15

    if-eqz v15, :cond_1

    sget v19, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v19

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v19

    sget v20, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    invoke-static {v15, v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseStbl(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    new-instance v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v13, v15, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->maximumSize:I

    move/from16 v19, v0

    add-int/lit8 v11, v19, 0x1e

    iget-object v0, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v12

    if-eqz v5, :cond_3

    iget v0, v5, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    move/from16 v19, v0

    iget v0, v5, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v12

    :cond_3
    iget-object v0, v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-wide v8, v19, v20

    cmp-long v19, v8, v6

    if-gez v19, :cond_1

    move-wide v6, v8

    goto/16 :goto_1

    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/16 v10, 0x8

    const/4 v5, 0x0

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v5, v10, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v5

    :cond_0
    iput v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    :cond_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v10, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    :cond_2
    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v6, v8

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    sub-long v0, v6, v8

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    :cond_4
    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v3, v10, :cond_5

    move v3, v4

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_6

    move v3, v4

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v3, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v3, v5, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v11, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iput v11, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v5

    sub-long v2, v6, v8

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long v0, v6, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v7, v2

    invoke-interface {p1, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->processFtypAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz v4, :cond_4

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_2
    const-wide/32 v6, 0x40000

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    long-to-int v5, v2

    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, p2, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v18

    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v15, v4, v18

    iget-object v3, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget v14, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v4, v14

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v6, v6

    add-long v16, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_1

    const-wide/32 v4, 0x40000

    cmp-long v4, v16, v4

    if-ltz v4, :cond_2

    :cond_1
    move-object/from16 v0, p2

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    iget-object v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    iget-object v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    iget-object v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iget v10, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v4, 0x4

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    :cond_5
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v4, v14

    iget-object v6, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v14

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v4, 0x0

    goto/16 :goto_0
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

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stz2:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_udta:I

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
.method public getPosition(J)J
    .locals 9

    const-wide v0, 0x7fffffffffffffffL

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v7, v7, v6

    iget-object v5, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v7, v7, v6

    iput v4, v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v7, v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v7, v4

    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    move-wide v0, v2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Sniffer;->sniffUnfragmented(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
