.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final cachedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private totalSpace:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache$1;

    const-string/jumbo v2, "SimpleCache.initialize()"

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache$1;-><init>(Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache$1;->start()V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method private addSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private getSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 12

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    if-nez v1, :cond_1

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    if-eqz v2, :cond_2

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_2

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    iget-object v6, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->removeStaleSpans()V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->getSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    if-nez v0, :cond_3

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v6

    :goto_1
    move-object v2, v6

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v10, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v8, v10

    invoke-static {v3, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v6

    goto :goto_1
.end method

.method private initialize()V
    .locals 8

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_4

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->upgradeIfNeeded(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onCacheInitialized()V

    goto :goto_0
.end method

.method private notifySpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;->onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;->onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;->onSpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onSpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private removeStaleSpans()V
    .locals 10

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    iget-object v5, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget-boolean v5, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    :cond_1
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private declared-synchronized startReadWriteNonBlocking(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->getSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v1

    iget-boolean v3, v1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v3, :cond_0

    move-object v0, v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->touch()Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v7, 0x0

    :goto_0
    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    if-eqz v3, :cond_1

    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v10, v12

    cmp-long v7, v10, p2

    if-gtz v7, :cond_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    add-long v8, p2, p4

    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long v0, v10, v12

    cmp-long v7, v0, v8

    if-ltz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    iget-wide v10, v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    cmp-long v7, v10, v0

    if-lez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    iget-wide v10, v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v10, v12

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    cmp-long v7, v0, v8

    if-ltz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized releaseHoleSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->removeStaleSpans()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onStartFile(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
