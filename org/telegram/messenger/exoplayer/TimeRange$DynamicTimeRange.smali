.class public final Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/TimeRange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicTimeRange"
.end annotation


# instance fields
.field private final bufferDepthUs:J

.field private final elapsedRealtimeAtStartUs:J

.field private final maxEndTimeUs:J

.field private final minStartTimeUs:J

.field private final systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;


# direct methods
.method public constructor <init>(JJJJLorg/telegram/messenger/exoplayer/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    iput-object p9, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCurrentBoundsMs([J)[J
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->getCurrentBoundsUs([J)[J

    move-result-object p1

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    div-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    div-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-object p1
.end method

.method public getCurrentBoundsUs([J)[J
    .locals 10

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v5, :cond_1

    :cond_0
    new-array p1, v5, [J

    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_2
    const/4 v4, 0x0

    aput-wide v2, p1, v4

    const/4 v4, 0x1

    aput-wide v0, p1, v4

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->minStartTimeUs:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->maxEndTimeUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->elapsedRealtimeAtStartUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;->bufferDepthUs:J

    long-to-int v2, v2

    add-int v0, v1, v2

    return v0
.end method

.method public isStatic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
