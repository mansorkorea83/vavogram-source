.class Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;
.super Ljava/lang/Object;
.source "AC3TrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SampleImpl"
.end annotation


# instance fields
.field private final dataSource:Lcom/googlecode/mp4parser/DataSource;

.field private final size:J

.field private final start:J

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;JJLcom/googlecode/mp4parser/DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->start:J

    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->size:J

    iput-object p6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->start:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->size:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->size:J

    return-wide v0
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->start:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;->size:J

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/googlecode/mp4parser/DataSource;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    return-void
.end method
