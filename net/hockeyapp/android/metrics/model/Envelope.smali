.class public Lnet/hockeyapp/android/metrics/model/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private cV:Ljava/lang/String;

.field private data:Lnet/hockeyapp/android/metrics/model/Base;

.field private epoch:Ljava/lang/String;

.field private ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/metrics/model/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private flags:J

.field private iKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVer:Ljava/lang/String;

.field private sampleRate:I

.field private seqNum:J

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    const/16 v0, 0x64

    iput v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Envelope;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getCV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lnet/hockeyapp/android/metrics/model/Base;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    return-object v0
.end method

.method public getEpoch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/metrics/model/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    iget-wide v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    return-wide v0
.end method

.method public getIKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    return v0
.end method

.method public getSeqNum()J
    .locals 2

    iget-wide v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    return-wide v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    return v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ver\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"name\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->name:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"time\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->time:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    iget v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    int-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"sampleRate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"epoch\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_1
    iget-wide v2, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"seqNum\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"iKey\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_3
    iget-wide v2, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"flags\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"os\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"osVer\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"appId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"appVer\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_8
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"cV\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_9
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"tags\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    invoke-static {p1, v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    const-string/jumbo v0, ","

    :cond_a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ext\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    invoke-static {p1, v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    const-string/jumbo v0, ","

    :cond_b
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"data\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    invoke-static {p1, v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeJsonSerializable(Ljava/io/Writer;Lnet/hockeyapp/android/metrics/model/IJsonSerializable;)V

    const-string/jumbo v0, ","

    :cond_c
    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->appVer:Ljava/lang/String;

    return-void
.end method

.method public setCV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->cV:Ljava/lang/String;

    return-void
.end method

.method public setData(Lnet/hockeyapp/android/metrics/model/Base;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->data:Lnet/hockeyapp/android/metrics/model/Base;

    return-void
.end method

.method public setEpoch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->epoch:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/metrics/model/Extension;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ext:Ljava/util/Map;

    return-void
.end method

.method public setFlags(J)V
    .locals 1

    iput-wide p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->flags:J

    return-void
.end method

.method public setIKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->iKey:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->name:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->osVer:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->sampleRate:I

    return-void
.end method

.method public setSeqNum(J)V
    .locals 1

    iput-wide p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->seqNum:J

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->tags:Ljava/util/Map;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->time:Ljava/lang/String;

    return-void
.end method

.method public setVer(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/metrics/model/Envelope;->ver:I

    return-void
.end method
