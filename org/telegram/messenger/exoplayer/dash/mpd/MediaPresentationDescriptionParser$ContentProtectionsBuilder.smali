.class public final Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
.super Ljava/lang/Object;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ContentProtectionsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
        ">;"
    }
.end annotation


# instance fields
.field private adaptationSetProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private currentRepresentationProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private representationProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private representationProtectionsSet:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeAddContentProtection(Ljava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addAdaptationSetProtection(Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V

    return-void
.end method

.method public addRepresentationProtection(Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V

    return-void
.end method

.method public build()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    check-cast p2, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->compare(Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;)I
    .locals 2

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/messenger/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endRepresentation()V
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtectionsSet:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtectionsSet:Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0
.end method
