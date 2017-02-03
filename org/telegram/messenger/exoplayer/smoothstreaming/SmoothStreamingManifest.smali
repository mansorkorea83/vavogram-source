.class public Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;,
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;
    }
.end annotation


# instance fields
.field public final durationUs:J

.field public final dvrWindowLengthUs:J

.field public final isLive:Z

.field public final lookAheadCount:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final protectionElement:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

.field public final streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;


# direct methods
.method public constructor <init>(IIJJJIZLorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->majorVersion:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->minorVersion:I

    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->lookAheadCount:I

    move/from16 v0, p10

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->dvrWindowLengthUs:J

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->durationUs:J

    return-void

    :cond_0
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p7

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0xf4240

    move-wide v2, p5

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    goto :goto_1
.end method
