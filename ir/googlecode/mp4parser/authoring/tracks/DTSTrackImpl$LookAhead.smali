.class Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;
.super Ljava/lang/Object;
.source "DTSTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LookAhead"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field bufferStartPos:J

.field private final corePresent:I

.field dataEnd:J

.field dataSource:Lcom/googlecode/mp4parser/DataSource;

.field inBufferPos:I

.field start:J

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;Lcom/googlecode/mp4parser/DataSource;JJI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    add-long v0, p5, p3

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataEnd:J

    iput p7, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->corePresent:I

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->fillBuffer()V

    return-void
.end method

.method private discardByte()V
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    return-void
.end method

.method private discardNext4AndMarkStart()V
    .locals 4

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->start:J

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    return-void
.end method

.method private discardQWord()V
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    return-void
.end method

.method private fillBuffer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Fill Buffer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataEnd:J

    iget-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x4000000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private getSample()Ljava/nio/ByteBuffer;
    .locals 8

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->start:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->start:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->start:J

    iget-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "damn! NAL exceeds buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextFourEquals(BBBB)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private nextFourEquals0x64582025()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    const/16 v1, 0x58

    const/16 v2, 0x20

    const/16 v3, 0x25

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals(BBBB)Z

    move-result v0

    return v0
.end method

.method private nextFourEquals0x64582025orEof()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    const/16 v1, 0x58

    const/16 v2, 0x20

    const/16 v3, 0x25

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEqualsOrEof(BBBB)Z

    move-result v0

    return v0
.end method

.method private nextFourEquals0x7FFE8001()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    const/4 v1, -0x2

    const/16 v2, -0x80

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals(BBBB)Z

    move-result v0

    return v0
.end method

.method private nextFourEquals0x7FFE8001orEof()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    const/4 v1, -0x2

    const/16 v2, -0x80

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEqualsOrEof(BBBB)Z

    move-result v0

    return v0
.end method

.method private nextFourEqualsOrEof(BBBB)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    sub-int/2addr v2, v3

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    div-long/2addr v4, v8

    div-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, p3, :cond_2

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, p4, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataEnd:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->dataEnd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->start:J

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->bufferStartPos:J

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->inBufferPos:I

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->fillBuffer()V

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals0x7FFE8001()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public findNextStart()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->corePresent:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals0x7FFE8001()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->discardNext4AndMarkStart()V

    :goto_2
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->corePresent:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals0x7FFE8001orEof()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_3
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->getSample()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->discardByte()V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals0x64582025()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->discardQWord()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->nextFourEquals0x64582025orEof()Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3
.end method
