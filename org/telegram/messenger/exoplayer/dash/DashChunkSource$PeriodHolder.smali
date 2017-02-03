.class public final Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PeriodHolder"
.end annotation


# instance fields
.field private availableEndTimeUs:J

.field private availableStartTimeUs:J

.field private drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private indexIsExplicit:Z

.field private indexIsUnbounded:Z

.field public final localIndex:I

.field public final representationHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final representationIndices:[I

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    invoke-virtual/range {p2 .. p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v9

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getPeriodDurationUs(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;I)J

    move-result-wide v4

    iget-object v2, v9, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptationSetIndex:I
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$500(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    iget-wide v2, v9, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->startMs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v2, v12

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getDrmInitData(Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$100(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getRepresentationIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v3

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    const/4 v7, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    array-length v2, v2

    if-ge v7, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    aget v2, v2, v7

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;-><init>(JJLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    const/4 v8, 0x0

    :goto_1
    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v2

    array-length v2, v2

    if-ge v8, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v3

    aget-object v3, v3, v8

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-static {v10, v3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getRepresentationIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    invoke-direct {p0, v4, v5, v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->updateRepresentationIndependentProperties(JLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object p1
.end method

.method private static getDrmInitData(Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 5

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    :cond_2
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->data:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getPeriodDurationUs(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;I)J
    .locals 5

    const-wide/16 v2, -0x1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodDuration(I)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    goto :goto_0
.end method

.method private static getRepresentationIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing format id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private updateRepresentationIndependentProperties(JLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getIndex()Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    invoke-interface {v2, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsUnbounded:Z

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsExplicit:Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->availableStartTimeUs:J

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsUnbounded:Z

    if-nez v3, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    invoke-interface {v2, v1}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-interface {v2, v1, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->availableEndTimeUs:J

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsUnbounded:Z

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsExplicit:Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->availableStartTimeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->availableEndTimeUs:J

    goto :goto_1
.end method


# virtual methods
.method public getAvailableEndTimeUs()J
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Period has unbounded index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->availableEndTimeUs:J

    return-wide v0
.end method

.method public getAvailableStartTimeUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->availableStartTimeUs:J

    return-wide v0
.end method

.method public getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public isIndexExplicit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsExplicit:Z

    return v0
.end method

.method public isIndexUnbounded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->indexIsUnbounded:Z

    return v0
.end method

.method public updatePeriod(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getPeriodDurationUs(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;I)J

    move-result-wide v2

    iget-object v6, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptationSetIndex:I
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$500(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    iget-object v5, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    array-length v6, v6

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    aget v6, v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v7, v4, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {v6, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->updateRepresentation(JLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationIndices:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    invoke-direct {p0, v2, v3, v6}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->updateRepresentationIndependentProperties(JLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V

    return-void
.end method
