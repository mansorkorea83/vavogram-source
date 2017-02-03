.class public Lnet/hockeyapp/android/metrics/model/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private machineName:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private oemName:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private roleInstance:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private screenResolution:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private vmName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Device;->InitializeFields()V

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

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ai.device.id"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ai.device.ip"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ai.device.language"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ai.device.locale"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ai.device.model"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ai.device.network"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ai.device.networkName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ai.device.oemName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ai.device.os"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "ai.device.osVersion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "ai.device.roleInstance"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "ai.device.roleName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "ai.device.screenResolution"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ai.device.type"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string/jumbo v0, "ai.device.machineName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "ai.device.vmName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public getOemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleInstance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

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

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.ip\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.language\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.locale\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.model\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.network\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_5
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.networkName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_6
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.oemName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_7
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.os\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_8
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.osVersion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_9
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.roleInstance\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.roleName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_b
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.screenResolution\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_c
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.type\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_d
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.machineName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_e
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ai.device.vmName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    :cond_f
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->id:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->language:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->locale:Ljava/lang/String;

    return-void
.end method

.method public setMachineName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->machineName:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->network:Ljava/lang/String;

    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->networkName:Ljava/lang/String;

    return-void
.end method

.method public setOemName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->oemName:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setRoleInstance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleInstance:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->screenResolution:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->type:Ljava/lang/String;

    return-void
.end method

.method public setVmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Device;->vmName:Ljava/lang/String;

    return-void
.end method
