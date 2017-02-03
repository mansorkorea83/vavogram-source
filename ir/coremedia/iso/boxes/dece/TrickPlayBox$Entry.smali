.class public Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;
.super Ljava/lang/Object;
.source "TrickPlayBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/dece/TrickPlayBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    return-void
.end method

.method static synthetic access$0(Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;)I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    return v0
.end method


# virtual methods
.method public getDependencyLevel()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public getPicType()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public setDependencyLevel(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    iget v1, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    return-void
.end method

.method public setPicType(I)V
    .locals 2

    iget v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    and-int/lit8 v0, p1, 0x3

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{picType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->getPicType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",dependencyLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->getDependencyLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
