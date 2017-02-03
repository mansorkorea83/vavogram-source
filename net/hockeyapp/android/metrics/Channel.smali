.class Lnet/hockeyapp/android/metrics/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# static fields
.field private static final LOCK:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"

.field protected static mMaxBatchCount:I


# instance fields
.field private final mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

.field protected final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x1

    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    return-void
.end method

.method public constructor <init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    return-void
.end method


# virtual methods
.method protected createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;)",
            "Lnet/hockeyapp/android/metrics/model/Envelope;"
        }
    .end annotation

    new-instance v1, Lnet/hockeyapp/android/metrics/model/Envelope;

    invoke-direct {v1}, Lnet/hockeyapp/android/metrics/model/Envelope;-><init>()V

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setData(Lnet/hockeyapp/android/metrics/model/Base;)V

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/Data;->getBaseData()Lnet/hockeyapp/android/metrics/model/Domain;

    move-result-object v0

    instance-of v4, v0, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    if-eqz v4, :cond_0

    check-cast v0, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/metrics/model/Envelope;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lnet/hockeyapp/android/utils/Util;->dateToISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTime(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getInstrumentationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/hockeyapp/android/metrics/model/Envelope;->setIKey(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v4}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getContextTags()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTags(Ljava/util/Map;)V

    :cond_1
    return-object v1
.end method

.method protected enqueue(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "HockeyApp-Metrics"

    const-string/jumbo v2, "Unable to add item to queue"

    invoke-static {v0, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public enqueueData(Lnet/hockeyapp/android/metrics/model/Base;)V
    .locals 6

    instance-of v3, p1, Lnet/hockeyapp/android/metrics/model/Data;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :try_start_0
    check-cast p1, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Channel;->createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/Channel;->serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/metrics/Channel;->enqueue(Ljava/lang/String;)V

    const-string/jumbo v3, "HockeyApp-Metrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enqueued telemetry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lnet/hockeyapp/android/metrics/model/Envelope;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "HockeyApp-Metrics"

    const-string/jumbo v4, "Telemetry not enqueued, could not create Envelope, must be of type ITelemetry"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "HockeyApp-Metrics"

    const-string/jumbo v4, "Telemetry not enqueued, must be of type ITelemetry"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p1, v1}, Lnet/hockeyapp/android/metrics/model/Envelope;->serialize(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v3, "HockeyApp-Metrics"

    const-string/jumbo v4, "Envelope wasn\'t empty but failed to serialize anything, returning null"

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "HockeyApp-Metrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to save data with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synchronize()V
    .locals 2

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/Persistence;->persist([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
