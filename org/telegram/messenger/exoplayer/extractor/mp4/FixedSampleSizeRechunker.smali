.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 21

    const/16 v2, 0x2000

    div-int v12, v2, p0

    const/4 v15, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v2, v0, :cond_0

    aget v10, p2, v2

    invoke-static {v10, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->ceilDivide(II)I

    move-result v19

    add-int v15, v15, v19

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v3, v15, [J

    new-array v4, v15, [I

    const/4 v5, 0x0

    new-array v6, v15, [J

    new-array v7, v15, [I

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v9, v2, :cond_2

    aget v11, p2, v9

    aget-wide v16, p1, v9

    :goto_2
    if-lez v11, :cond_1

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput-wide v16, v3, v13

    mul-int v2, p0, v8

    aput v2, v4, v13

    aget v2, v4, v13

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v0, v14

    move-wide/from16 v18, v0

    mul-long v18, v18, p3

    aput-wide v18, v6, v13

    const/4 v2, 0x1

    aput v2, v7, v13

    aget v2, v4, v13

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    add-int/2addr v14, v8

    sub-int/2addr v11, v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[I)V

    return-object v2
.end method
