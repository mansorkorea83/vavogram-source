.class final Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"

.field private static final TYPE_PCM:I = 0x1

.field private static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v12, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    iget v2, v9, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v14, "RIFF"

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    if-eq v2, v14, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v12, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    const-string/jumbo v2, "WAVE"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    if-eq v11, v2, :cond_1

    const-string/jumbo v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported RIFF format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    :goto_1
    iget v2, v9, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v14, "fmt "

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    if-eq v2, v14, :cond_2

    iget-wide v14, v9, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    goto :goto_1

    :cond_2
    iget-wide v14, v9, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v16, 0x10

    cmp-long v2, v14, v16

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v2, v12, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v13

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v4

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v7

    mul-int v2, v3, v7

    div-int/lit8 v10, v2, 0x8

    if-eq v6, v10, :cond_4

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Expected block alignment: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; got: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer/util/Util;->getPcmEncoding(I)I

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported WAV bit depth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    if-eq v13, v2, :cond_6

    const v2, 0xfffe

    if-eq v13, v2, :cond_6

    const-string/jumbo v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported WAV format type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    iget-wide v14, v9, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v14

    add-int/lit8 v2, v2, -0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;-><init>(IIIIII)V

    goto/16 :goto_0
.end method

.method public static skipToData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    const/16 v8, 0x8

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    new-instance v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v3, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    :goto_0
    iget v4, v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v5, "data"

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_2

    const-string/jumbo v4, "WavHeaderReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x8

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long v0, v4, v6

    iget v4, v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v5, "RIFF"

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_0

    const-wide/16 v0, 0xc

    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    new-instance v4, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    long-to-int v4, v0

    invoke-interface {p0, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->setDataBounds(JJ)V

    return-void
.end method
