.class public final Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field private static final PACKET_START_CODE_PREFIX:I = 0x1

.field private static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field private static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, -0x1

    :goto_0
    return v8

    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    const/16 v8, 0x1b9

    if-ne v1, v8, :cond_1

    const/4 v8, -0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x1ba

    if-ne v1, v8, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-interface {p1, v8, v9, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v2, v8, 0x7

    add-int/lit8 v8, v2, 0xe

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/16 v8, 0x1bb

    if-ne v1, v8, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p1, v8, v9, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v8, v7, 0x6

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    and-int/lit16 v8, v1, -0x100

    shr-int/lit8 v8, v8, 0x8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    and-int/lit16 v6, v1, 0xff

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v8, :cond_9

    if-nez v4, :cond_6

    const/4 v0, 0x0

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-nez v8, :cond_a

    const/16 v8, 0xbd

    if-ne v6, v8, :cond_a

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ts/Ac3Reader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Z)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-direct {v4, v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-nez v8, :cond_8

    :cond_7
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    :cond_8
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAllTracks:Z

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    :cond_9
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p1, v8, v9, v10}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    add-int/lit8 v5, v3, 0x6

    if-nez v4, :cond_c

    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-nez v8, :cond_b

    and-int/lit16 v8, v6, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_b

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundAudioTrack:Z

    goto :goto_1

    :cond_b
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-nez v8, :cond_5

    and-int/lit16 v8, v6, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_5

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/H262Reader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->foundVideoTrack:Z

    goto :goto_1

    :cond_c
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v8

    if-ge v8, v5, :cond_d

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-array v9, v5, [B

    invoke-virtual {v8, v9, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    :cond_d
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_2
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->reset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xe

    new-array v1, v4, [B

    const/16 v4, 0xe

    invoke-interface {p1, v1, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v4, 0x1ba

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    aget-byte v4, v1, v8

    and-int/lit16 v4, v4, 0xc4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_0

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_0

    const/16 v4, 0x8

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_0

    const/16 v4, 0x9

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    const/16 v4, 0xc

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v7, :cond_0

    const/16 v4, 0xd

    aget-byte v4, v1, v4

    and-int/lit8 v0, v4, 0x7

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-interface {p1, v1, v3, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v1, v9

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    if-ne v2, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
