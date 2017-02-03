.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorBase;
.source "InitialObjectDescriptor.java"


# instance fields
.field audioProfileLevelIndication:I

.field esDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field extensionDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field graphicsProfileLevelIndication:I

.field includeInlineProfileLevelFlag:I

.field oDProfileLevelIndication:I

.field private objectDescriptorId:I

.field sceneProfileLevelIndication:I

.field unknownDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field urlFlag:I

.field urlLength:I

.field urlString:Ljava/lang/String;

.field visualProfileLevelIndication:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->esDescriptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->extensionDescriptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    const v3, 0xffc0

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->objectDescriptorId:I

    and-int/lit8 v3, v0, 0x3f

    shr-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlFlag:I

    and-int/lit8 v3, v0, 0x1f

    shr-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->includeInlineProfileLevelFlag:I

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->getSize()I

    move-result v3

    add-int/lit8 v2, v3, -0x2

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlString:Ljava/lang/String;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    :cond_0
    :goto_0
    if-le v2, v6, :cond_1

    invoke-static {v5, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v1

    instance-of v3, v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->extensionDescriptors:Ljava/util/List;

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->oDProfileLevelIndication:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->sceneProfileLevelIndication:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->audioProfileLevelIndication:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->visualProfileLevelIndication:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->graphicsProfileLevelIndication:I

    add-int/lit8 v2, v2, -0x5

    if-le v2, v6, :cond_0

    invoke-static {v5, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v3

    sub-int/2addr v2, v3

    instance-of v3, v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->esDescriptors:Ljava/util/List;

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InitialObjectDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{objectDescriptorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->objectDescriptorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", urlFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", includeInlineProfileLevelFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->includeInlineProfileLevelFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", urlLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", urlString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", oDProfileLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->oDProfileLevelIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", sceneProfileLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->sceneProfileLevelIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", audioProfileLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->audioProfileLevelIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", visualProfileLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->visualProfileLevelIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", graphicsProfileLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->graphicsProfileLevelIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", esDescriptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->esDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", extensionDescriptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->extensionDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", unknownDescriptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
