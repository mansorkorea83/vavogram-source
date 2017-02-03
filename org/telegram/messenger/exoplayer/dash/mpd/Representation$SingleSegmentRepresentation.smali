.class public Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;
.super Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field public final contentLength:J

.field private final indexUri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

.field private final segmentIndex:Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V
    .locals 11

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$1;)V

    move-object/from16 v0, p5

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->getIndex()Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->indexUri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->contentLength:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->indexUri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;

    return-void

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;

    new-instance v3, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;JJJJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;
    .locals 11

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    const/4 v3, 0x0

    sub-long v4, p7, p5

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    move-object v2, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    sub-long v6, p11, p9

    const-wide/16 v8, 0x1

    add-long v9, v6, v8

    move-object v6, p4

    move-wide/from16 v7, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    move-object/from16 v8, p13

    move-wide/from16 v9, p14

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V

    return-object v2
.end method


# virtual methods
.method public getIndex()Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/mpd/DashSingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;->indexUri:Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method
