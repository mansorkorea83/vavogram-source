.class public Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# instance fields
.field private fragmentLength:I

.field private movie:Lcom/googlecode/mp4parser/authoring/Movie;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Movie;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    iput p2, p0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    return-void
.end method


# virtual methods
.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J
    .locals 30

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->movie:Lcom/googlecode/mp4parser/authoring/Movie;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v20, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v8, v22, -0x1

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v8, v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    new-array v9, v8, [J

    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    invoke-static {v9, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    const/16 v22, 0x0

    const-wide/16 v24, 0x1

    aput-wide v24, v9, v22

    const-wide/16 v18, 0x0

    const/4 v11, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    move v14, v11

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    :cond_2
    add-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    int-to-long v12, v0

    array-length v0, v9

    move/from16 v22, v0

    add-int/lit8 v10, v22, -0x1

    :goto_2
    if-gez v10, :cond_5

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v2, v0, [J

    array-length v0, v9

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    return-object v2

    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v15}, Lcom/googlecode/mp4parser/authoring/Track;->getDuration()J

    move-result-wide v24

    invoke-interface {v15}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v26

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v23, v20, v16

    if-gez v23, :cond_0

    move-wide/from16 v20, v16

    goto/16 :goto_0

    :cond_4
    aget-wide v4, v23, v22

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v26

    div-long v26, v18, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->fragmentLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v3, v25, 0x1

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v3, v0, :cond_2

    add-int/lit8 v11, v14, 0x1

    add-int/lit8 v25, v14, 0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v9, v3

    add-long v18, v18, v4

    add-int/lit8 v22, v22, 0x1

    move v14, v11

    goto :goto_1

    :cond_5
    aget-wide v22, v9, v10

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    aput-wide v12, v9, v10

    :cond_6
    aget-wide v12, v9, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_7
    aget-wide v6, v9, v22

    array-length v0, v2

    move/from16 v24, v0

    if-eqz v24, :cond_8

    array-length v0, v2

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-wide v24, v2, v24

    cmp-long v24, v24, v6

    if-eqz v24, :cond_9

    :cond_8
    array-length v0, v2

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    array-length v0, v2

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aput-wide v6, v2, v24

    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3
.end method
