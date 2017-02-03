.class Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;
.super Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtilV19"
.end annotation


# instance fields
.field private final audioTimestamp:Landroid/media/AudioTimestamp;

.field private lastRawTimestampFramePosition:J

.field private lastTimestampFramePosition:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$1;)V

    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public getTimestampFramePosition()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    return-wide v0
.end method

.method public getTimestampNanoTime()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    return-void
.end method

.method public updateTimestamp()Z
    .locals 8

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTrack:Landroid/media/AudioTrack;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v3, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    :cond_1
    return v2
.end method
