.class Lcom/evernote/android/job/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:La/a/a/a/c;

.field private static final b:J


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Landroid/util/SparseArray;

.field private final e:Landroid/support/v4/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobExecutor"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/g;->a:La/a/a/a/c;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/g;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/g;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/g;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/android/job/g;->e:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private declared-synchronized a(Lcom/evernote/android/job/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/evernote/android/job/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/evernote/android/job/g;->e:Landroid/support/v4/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/g;->a(Lcom/evernote/android/job/a;)V

    return-void
.end method

.method static synthetic b()J
    .locals 2

    sget-wide v0, Lcom/evernote/android/job/g;->b:J

    return-wide v0
.end method

.method static synthetic c()La/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/g;->a:La/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)Lcom/evernote/android/job/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/evernote/android/job/g;->e:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Ljava/util/Set;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/g;->a(Ljava/lang/String;)Ljava/util/Set;
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

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/evernote/android/job/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/evernote/android/job/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/evernote/android/job/g;->e:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/evernote/android/job/n;Lcom/evernote/android/job/a;)Ljava/util/concurrent/Future;
    .locals 6
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p3, :cond_0

    :try_start_0
    sget-object v1, Lcom/evernote/android/job/g;->a:La/a/a/a/c;

    const-string/jumbo v2, "JobCreator returned null for tag %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/evernote/android/job/n;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, La/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/evernote/android/job/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Job for tag %s was already run, a creator should always create a new Job instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p3, p1}, Lcom/evernote/android/job/a;->a(Landroid/content/Context;)Lcom/evernote/android/job/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/evernote/android/job/a;->a(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/a;

    sget-object v0, Lcom/evernote/android/job/g;->a:La/a/a/a/c;

    const-string/jumbo v1, "Executing %s, context %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/evernote/android/job/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/evernote/android/job/n;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/evernote/android/job/g;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/evernote/android/job/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/evernote/android/job/i;-><init>(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;Lcom/evernote/android/job/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method
