.class Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;
.super Ljava/lang/Object;
.source "FlacSeekTable.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->createSeekMap(JJ)Lorg/telegram/messenger/exoplayer/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

.field final synthetic val$firstFrameOffset:J

.field final synthetic val$sampleRate:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;JJ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->this$0:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->val$sampleRate:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->val$firstFrameOffset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .locals 9

    const/4 v8, 0x1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->val$sampleRate:J

    mul-long/2addr v4, p1

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->this$0:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    #getter for: Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->sampleNumbers:[J
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->access$000(Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;)[J

    move-result-object v1

    invoke-static {v1, v2, v3, v8, v8}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->val$firstFrameOffset:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable$1;->this$0:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    #getter for: Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->offsets:[J
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->access$100(Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;)[J

    move-result-object v1

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
