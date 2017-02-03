.class public Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
.super Ljava/lang/Object;
.source "CompositionTimeToSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/CompositionTimeToSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field count:I

.field offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->count:I

    iput p2, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->offset:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->count:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->offset:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->count:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->offset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Entry{count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
