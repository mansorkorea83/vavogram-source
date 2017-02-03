.class final Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method

.method private readUint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    if-nez v3, :cond_0

    const-wide/high16 v4, -0x8000

    :goto_0
    return-wide v4

    :cond_0
    const/16 v2, 0x80

    const/4 v1, 0x0

    :goto_1
    and-int v4, v3, v2

    if-nez v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v6, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v4, v3

    goto :goto_0
.end method


# virtual methods
.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    const-wide/16 v18, -0x1

    cmp-long v5, v12, v18

    if-eqz v5, :cond_0

    const-wide/16 v18, 0x400

    cmp-long v5, v12, v18

    if-lez v5, :cond_1

    :cond_0
    const-wide/16 v18, 0x400

    :goto_0
    move-wide/from16 v0, v18

    long-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    :goto_1
    const-wide/32 v18, 0x1a45dfa3

    cmp-long v5, v16, v18

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    if-ne v5, v4, :cond_2

    const/4 v5, 0x0

    :goto_2
    return v5

    :cond_1
    move-wide/from16 v18, v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v5, 0x8

    shl-long v18, v16, v5

    const-wide/16 v20, -0x100

    and-long v16, v18, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    aget-byte v5, v5, v18

    and-int/lit16 v5, v5, 0xff

    int-to-long v0, v5

    move-wide/from16 v18, v0

    or-long v16, v16, v18

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->readUint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v8, v5

    const-wide/high16 v18, -0x8000

    cmp-long v5, v6, v18

    if-eqz v5, :cond_4

    const-wide/16 v18, -0x1

    cmp-long v5, v12, v18

    if-eqz v5, :cond_6

    add-long v18, v8, v6

    cmp-long v5, v18, v12

    if-ltz v5, :cond_6

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-eqz v5, :cond_6

    long-to-int v5, v14

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v20, v8, v6

    cmp-long v5, v18, v20

    if-gez v5, :cond_9

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->readUint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v10

    const-wide/high16 v18, -0x8000

    cmp-long v5, v10, v18

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->readUint(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v14

    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-ltz v5, :cond_8

    const-wide/32 v18, 0x7fffffff

    cmp-long v5, v14, v18

    if-lez v5, :cond_5

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/webm/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v20, v8, v6

    cmp-long v5, v18, v20

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2
.end method
