.class public final Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;,
        Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final MP3_MAX_INPUT_SIZE:I = 0x1000

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SUBRIP_PREFIX:[B = null

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_EMPTY:[B = null

.field private static final SUBRIP_TIMECODE_LENGTH:I = 0xc

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNKNOWN:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

.field private cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final reader:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private final sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentDrmInitData:Z

.field private sentSeekMap:Z

.field private final subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

.field private final vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 0x1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 0x1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;)V
    .locals 4

    const/4 v3, 0x4

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->reader:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->reader:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$1;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;->init(Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReaderOutput;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Lorg/telegram/messenger/exoplayer/extractor/SeekMap;
    .locals 13

    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/LongArray;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/LongArray;->size()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/util/LongArray;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    iput-object v12, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    sget-object v6, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/LongArray;->size()I

    move-result v0

    new-array v4, v0, [I

    new-array v3, v0, [J

    new-array v1, v0, [J

    new-array v5, v0, [J

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/exoplayer/util/LongArray;->get(I)J

    move-result-wide v6

    aput-wide v6, v5, v2

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/exoplayer/util/LongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v3, v6

    aget-wide v8, v3, v2

    sub-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v2

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v5, v6

    aget-wide v8, v5, v2

    sub-long/2addr v6, v8

    aput-wide v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v0, -0x1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v4, v6

    add-int/lit8 v6, v0, -0x1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v1, v6

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    new-instance v6, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    invoke-direct {v6, v4, v3, v1, v5}, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_0
.end method

.method private commitSampleToOutput(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;J)V
    .locals 8

    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->writeSubripSample(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;)V

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1

    if-nez p0, :cond_1

    new-array p0, p1, [I

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_AAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_MPEG/L3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_AC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_EAC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_TRUEHD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_DTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_FLAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_MS/ACM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "S_VOBSUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "S_HDMV/PGS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSeekForCues(Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;J)Z
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    if-eqz v2, :cond_0

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    iput-wide v2, p1, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v2, p1, Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;->position:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private readScratch(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0
.end method

.method private readToOutput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v2, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, p1, p3, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private readToTarget(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v1, p4

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    return-void
.end method

.method private resetSample()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static setSubripSampleEndTimecode([BJ)V
    .locals 11

    const-wide v8, 0xd693a400L

    const/4 v10, 0x0

    const-wide/16 v6, -0x1

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    sget-object v4, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    :goto_0
    const/16 v5, 0x13

    const/16 v6, 0xc

    invoke-static {v4, v10, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    div-long v6, p1, v8

    long-to-int v0, v6

    int-to-long v6, v0

    mul-long/2addr v6, v8

    sub-long/2addr p1, v6

    const-wide/32 v6, 0x3938700

    div-long v6, p1, v6

    long-to-int v2, v6

    const v5, 0x3938700

    mul-int/2addr v5, v2

    int-to-long v6, v5

    sub-long/2addr p1, v6

    const-wide/32 v6, 0xf4240

    div-long v6, p1, v6

    long-to-int v3, v6

    const v5, 0xf4240

    mul-int/2addr v5, v3

    int-to-long v6, v5

    sub-long/2addr p1, v6

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    long-to-int v1, v6

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%02d:%02d:%02d,%03d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0
.end method

.method private writeSampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "S_TEXT/UTF8"

    iget-object v6, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    array-length v5, v5

    add-int v4, v5, p3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v5

    if-ge v5, v4, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v6, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    add-int v7, v4, p3

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    sget-object v6, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->SUBRIP_PREFIX:[B

    array-length v6, v6

    invoke-interface {p1, v5, v6, p3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    if-nez v5, :cond_5

    iget-boolean v5, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v8, v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    new-instance v5, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v6, "Extension bit is set in signal byte"

    invoke-direct {v5, v6}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v8

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v9, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    aput-byte v6, v5, v8

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v3, v5, v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    :cond_4
    :goto_1
    iput-boolean v9, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr p3, v5

    const-string/jumbo v5, "V_MPEG4/ISO/AVC"

    iget-object v6, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "V_MPEGH/ISO/HEVC"

    iget-object v6, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aput-byte v8, v0, v8

    aput-byte v8, v0, v9

    const/4 v5, 0x2

    aput-byte v8, v0, v5

    iget v1, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    iget v5, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v2, v5, 0x4

    :goto_2
    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    if-ge v5, p3, :cond_a

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v5, :cond_8

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readToTarget(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;[BII)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v3, v5, v10}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    goto :goto_2

    :cond_7
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v6, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    iget-object v7, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    goto :goto_1

    :cond_8
    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    invoke-direct {p0, p1, v3, v6}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    :cond_9
    :goto_3
    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    if-ge v5, p3, :cond_a

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    sub-int v5, p3, v5

    invoke-direct {p0, p1, v3, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;I)I

    goto :goto_3

    :cond_a
    const-string/jumbo v5, "A_VORBIS"

    iget-object v6, p2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v3, v5, v10}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    goto/16 :goto_0
.end method

.method private writeSubripSample(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockDurationUs:J

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->setSubripSampleEndTimecode([BJ)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->subripSample:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    return-void
.end method


# virtual methods
.method binaryElement(IILorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v25, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unexpected id: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    rsub-int/lit8 v26, p2, 0x4

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    :goto_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecPrivate:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move/from16 v0, p2

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move/from16 v25, v0

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x8

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;ZZI)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->getLastLength()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockDurationUs:J

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v25, v0

    sub-int v25, p2, v25

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v25, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-byte v25, v25, v26

    and-int/lit8 v25, v25, 0x6

    shr-int/lit8 v13, v25, 0x1

    if-nez v13, :cond_4

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v27, v0

    sub-int v27, p2, v27

    add-int/lit8 v27, v27, -0x3

    aput v27, v25, v26

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-byte v25, v25, v26

    shl-int/lit8 v25, v25, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    or-int v22, v25, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-byte v25, v25, v26

    and-int/lit8 v25, v25, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->type:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v25, 0xa3

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x80

    move/from16 v25, v0

    const/16 v26, 0x80

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    :cond_2
    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_15

    const/16 v25, 0x1

    move/from16 v26, v25

    :goto_4
    if-eqz v11, :cond_16

    const/high16 v25, 0x800

    :goto_5
    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    :cond_3
    const/16 v25, 0xa3

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v26, v0

    aget v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->defaultSampleDurationNs:I

    move/from16 v28, v0

    mul-int v25, v25, v28

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v26, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->commitSampleToOutput(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;J)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    goto :goto_6

    :cond_4
    const/16 v25, 0xa3

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    new-instance v25, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v26, "Lacing only supported in SimpleBlocks."

    invoke-direct/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_5
    const/16 v25, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v13, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v25, v0

    sub-int v25, p2, v25

    add-int/lit8 v25, v25, -0x4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    div-int v6, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v13, v0, :cond_9

    const/16 v23, 0x0

    const/4 v8, 0x4

    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v26, v25, v17

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v7, v0, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    aget v26, v25, v17

    add-int v26, v26, v7

    aput v26, v25, v17

    const/16 v25, 0xff

    move/from16 v0, v25

    if-eq v7, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    aget v25, v25, v17

    add-int v23, v23, v25

    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v27, v0

    sub-int v27, p2, v27

    sub-int v27, v27, v8

    sub-int v27, v27, v23

    aput v27, v25, v26

    goto/16 :goto_1

    :cond_9
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v13, v0, :cond_12

    const/16 v23, 0x0

    const/4 v8, 0x4

    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v26, v25, v17

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    aget-byte v25, v25, v26

    if-nez v25, :cond_a

    new-instance v25, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v26, "No valid varint length mask found"

    invoke-direct/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_a
    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    :goto_9
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v9, v0, :cond_c

    const/16 v25, 0x1

    rsub-int/lit8 v26, v9, 0x7

    shl-int v14, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    aget-byte v25, v25, v26

    and-int v25, v25, v14

    if-eqz v25, :cond_e

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v16, v15, 0x1

    aget-byte v25, v25, v15

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    xor-int/lit8 v26, v14, -0x1

    and-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :goto_a
    move/from16 v0, v16

    if-ge v0, v8, :cond_b

    const/16 v25, 0x8

    shl-long v18, v18, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    or-long v18, v18, v26

    move/from16 v16, v15

    goto :goto_a

    :cond_b
    if-lez v17, :cond_c

    const-wide/16 v26, 0x1

    mul-int/lit8 v25, v9, 0x7

    add-int/lit8 v25, v25, 0x6

    shl-long v26, v26, v25

    const-wide/16 v28, 0x1

    sub-long v26, v26, v28

    sub-long v18, v18, v26

    :cond_c
    const-wide/32 v26, -0x80000000

    cmp-long v25, v18, v26

    if-ltz v25, :cond_d

    const-wide/32 v26, 0x7fffffff

    cmp-long v25, v18, v26

    if-lez v25, :cond_f

    :cond_d
    new-instance v25, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v26, "EBML lacing sample size out of range."

    invoke-direct/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    :cond_f
    move-wide/from16 v0, v18

    long-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    if-nez v17, :cond_10

    :goto_b
    aput v10, v25, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    aget v25, v25, v17

    add-int v23, v23, v25

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v26, v0

    add-int/lit8 v27, v17, -0x1

    aget v26, v26, v27

    add-int v10, v10, v26

    goto :goto_b

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    move/from16 v27, v0

    sub-int v27, p2, v27

    sub-int v27, v27, v8

    sub-int v27, v27, v23

    aput v27, v25, v26

    goto/16 :goto_1

    :cond_12
    new-instance v25, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unexpected lacing value: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_15
    const/16 v25, 0x0

    move/from16 v26, v25

    goto/16 :goto_4

    :cond_16
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_17
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_4
        0x4255 -> :sswitch_2
        0x47e2 -> :sswitch_3
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
    .end sparse-switch
.end method

.method endMasterElement(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->buildSeekMap()Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->commitSampleToOutput(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;J)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Universal;

    new-instance v2, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v3, "video/webm"

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->encryptionKeyId:[B

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Universal;-><init>(Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->initializeOutput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;IJ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_7
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch
.end method

.method floatElement(ID)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    double-to-long v0, p2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    double-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->sampleRate:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method getElementType(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x9b -> :sswitch_1
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x54b0 -> :sswitch_1
        0x54b2 -> :sswitch_1
        0x54ba -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x6264 -> :sswitch_1
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x22b59c -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    return-void
.end method

.method integerElement(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_0

    :sswitch_3
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->width:I

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->height:I

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayWidth:I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayHeight:I

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->displayUnit:I

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->number:I

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->type:I

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-wide p2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecDelayNs:J

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-wide p2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->channelCount:I

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    long-to-int v1, p2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->audioBitDepth:I

    goto/16 :goto_0

    :sswitch_10
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_0

    :sswitch_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_12
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_13
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_14
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_15
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_16
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/util/LongArray;->add(J)V

    goto/16 :goto_0

    :sswitch_17
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer/util/LongArray;->add(J)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_0

    :sswitch_18
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    goto/16 :goto_0

    :sswitch_19
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockDurationUs:J

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_a
        0x9b -> :sswitch_19
        0x9f -> :sswitch_e
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_16
        0xba -> :sswitch_5
        0xd7 -> :sswitch_9
        0xe7 -> :sswitch_18
        0xf1 -> :sswitch_17
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_14
        0x47e8 -> :sswitch_15
        0x5031 -> :sswitch_11
        0x5032 -> :sswitch_12
        0x53ac -> :sswitch_2
        0x54b0 -> :sswitch_6
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x56aa -> :sswitch_c
        0x56bb -> :sswitch_d
        0x6264 -> :sswitch_f
        0x23e383 -> :sswitch_b
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch
.end method

.method isLevel1Element(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->reader:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v2, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->maybeSeekForCues(Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->reader:Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/EbmlReader;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/VarintReader;->reset()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

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

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lorg/telegram/messenger/exoplayer/util/LongArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/LongArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lorg/telegram/messenger/exoplayer/util/LongArray;

    goto :goto_0

    :sswitch_4
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    :sswitch_5
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v1, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sentSeekMap:Z

    goto :goto_0

    :sswitch_6
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->hasContentEncryption:Z

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;-><init>(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method stringElement(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    iput-object p2, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->codecId:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;->currentTrack:Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;

    #setter for: Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->language:Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;->access$202(Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
        0x22b59c -> :sswitch_2
    .end sparse-switch
.end method
