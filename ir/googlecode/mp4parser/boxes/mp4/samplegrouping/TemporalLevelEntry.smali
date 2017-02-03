.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "TemporalLevelEntry.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tele"


# instance fields
.field private levelIndependentlyDecodable:Z

.field private reserved:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;

    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-short v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->reserved:S

    iget-short v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->reserved:S

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tele"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->reserved:S

    add-int v0, v1, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLevelIndependentlyDecodable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLevelIndependentlyDecodable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TemporalLevelEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{levelIndependentlyDecodable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/TemporalLevelEntry;->levelIndependentlyDecodable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
