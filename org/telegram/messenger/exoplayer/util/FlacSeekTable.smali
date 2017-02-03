.class public final Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;
.super Ljava/lang/Object;
.source "FlacSeekTable.java"


# static fields
.field private static final METADATA_LENGTH_OFFSET:I = 0x1

.field private static final SEEK_POINT_SIZE:I = 0x12


# instance fields
.field private final offsets:[J

.field private final sampleNumbers:[J


# direct methods
.method private constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->sampleNumbers:[J

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->offsets:[J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;)[J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->sampleNumbers:[J

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;)[J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->offsets:[J

    return-object v0
.end method

.method public static parseSeekTable(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    div-int/lit8 v2, v1, 0x12

    new-array v4, v2, [J

    new-array v3, v2, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v3, v0

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    invoke-direct {v5, v4, v3}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;-><init>([J[J)V

    return-object v5
.end method


# virtual methods
.method public createSeekMap(JJ)Lorg/telegram/messenger/exoplayer/extractor/SeekMap;
    .locals 7

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;-><init>(Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;JJ)V

    return-object v0
.end method
