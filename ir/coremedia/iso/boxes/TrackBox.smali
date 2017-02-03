.class public Lcom/coremedia/iso/boxes/TrackBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trak"


# instance fields
.field private sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "trak"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;
    .locals 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaBox;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/coremedia/iso/boxes/MediaBox;

    goto :goto_0
.end method

.method public getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;
    .locals 3

    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v2

    iput-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .locals 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    goto :goto_0
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->setBoxes(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    return-void
.end method
