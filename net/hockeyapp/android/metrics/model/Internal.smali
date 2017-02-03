.class public Lnet/hockeyapp/android/metrics/model/Internal;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private accountId:Ljava/lang/String;

.field private agentVersion:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private applicationType:Ljava/lang/String;

.field private dataCollectorReceivedTime:Ljava/lang/String;

.field private flowType:Ljava/lang/String;

.field private instrumentationKey:Ljava/lang/String;

.field private isAudit:Ljava/lang/String;

.field private profileClassId:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private requestSource:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private telemetryItemId:Ljava/lang/String;

.field private trackingSourceId:Ljava/lang/String;

.field private trackingType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Internal;->InitializeFields()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 0

    return-void
.end method

.method public addToHashMap(Ljava/util/Map;)V
    .locals 2
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

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ai.internal.sdkVersion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ai.internal.agentVersion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ai.internal.dataCollectorReceivedTime"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ai.internal.profileId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ai.internal.profileClassId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ai.internal.accountId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ai.internal.applicationName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ai.internal.instrumentationKey"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ai.internal.telemetryItemId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "ai.internal.applicationType"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "ai.internal.requestSource"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "ai.internal.flowType"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "ai.internal.isAudit"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ai.internal.trackingSourceId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "ai.internal.trackingType"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataCollectorReceivedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAudit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileClassId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTelemetryItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    return-object v0
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

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, ""

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.sdkVersion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.agentVersion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.dataCollectorReceivedTime\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.profileId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.profileClassId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.accountId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.applicationName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.instrumentationKey\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.telemetryItemId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_8
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.applicationType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_9
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.requestSource\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.flowType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_b
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.isAudit\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_c
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.trackingSourceId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_d
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.internal.trackingType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_e
    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAgentVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    return-void
.end method

.method public setDataCollectorReceivedTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    return-void
.end method

.method public setFlowType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    return-void
.end method

.method public setInstrumentationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    return-void
.end method

.method public setIsAudit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    return-void
.end method

.method public setProfileClassId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setRequestSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setTelemetryItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    return-void
.end method

.method public setTrackingSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    return-void
.end method

.method public setTrackingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    return-void
.end method
