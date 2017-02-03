.class public final Lcom/evernote/android/job/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:La/a/a/a/c;

.field private static volatile c:Lcom/evernote/android/job/j;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/evernote/android/job/f;

.field private final f:Lcom/evernote/android/job/s;

.field private final g:Lcom/evernote/android/job/g;

.field private h:Lcom/evernote/android/job/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/evernote/android/job/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/j;->a:Ljava/lang/String;

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobManager"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/j;->b:La/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    new-instance v0, Lcom/evernote/android/job/f;

    invoke-direct {v0}, Lcom/evernote/android/job/f;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/j;->e:Lcom/evernote/android/job/f;

    new-instance v0, Lcom/evernote/android/job/s;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/s;

    new-instance v0, Lcom/evernote/android/job/g;

    invoke-direct {v0}, Lcom/evernote/android/job/g;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/j;->g:Lcom/evernote/android/job/g;

    iget-object v0, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/evernote/android/job/a/c;->d(Landroid/content/Context;)Lcom/evernote/android/job/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/a/c;)V

    invoke-direct {p0}, Lcom/evernote/android/job/j;->i()V

    return-void
.end method

.method public static a()Lcom/evernote/android/job/j;
    .locals 3

    sget-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/evernote/android/job/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You need to call create() at least once to create the singleton"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/evernote/android/job/j;
    .locals 3
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    if-nez v0, :cond_3

    const-class v1, Lcom/evernote/android/job/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    if-nez v0, :cond_2

    const-string/jumbo v0, "Context cannot be null"

    invoke-static {p0, v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/evernote/android/job/j;->a:Ljava/lang/String;

    new-instance v2, Lcom/evernote/android/job/a/e;

    invoke-direct {v2}, Lcom/evernote/android/job/a/e;-><init>()V

    invoke-static {v0, v2}, La/a/a/a/b;->a(Ljava/lang/String;La/a/a/a/c;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/evernote/android/job/j;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    invoke-static {p0}, Lcom/evernote/android/job/a/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "No wake lock permission"

    invoke-static {v0}, La/a/a/a/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/evernote/android/job/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "No boot permission"

    invoke-static {v0}, La/a/a/a/a;->b(Ljava/lang/String;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/evernote/android/job/j;->c:Lcom/evernote/android/job/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/evernote/android/job/j;Lcom/evernote/android/job/n;)Lcom/evernote/android/job/l;
    .locals 1

    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/evernote/android/job/j;)Lcom/evernote/android/job/s;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/s;

    return-object v0
.end method

.method private a(Lcom/evernote/android/job/a;)Z
    .locals 5
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/android/job/a;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/evernote/android/job/a;->h()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/evernote/android/job/j;->b:La/a/a/a/c;

    const-string/jumbo v3, "Cancel running %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/evernote/android/job/a;->g()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/evernote/android/job/n;)Z
    .locals 5
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/evernote/android/job/j;->b:La/a/a/a/c;

    const-string/jumbo v3, "Found pending job %s, canceling"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/evernote/android/job/l;->a(I)V

    invoke-virtual {p0}, Lcom/evernote/android/job/j;->d()Lcom/evernote/android/job/s;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/s;->b(Lcom/evernote/android/job/n;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 3
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/s;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/evernote/android/job/s;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/n;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/android/job/j;->b()Ljava/util/Set;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/j;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private c(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/l;
    .locals 2

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->q()Lcom/evernote/android/job/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/a/c;->c(Landroid/content/Context;)Lcom/evernote/android/job/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()La/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/j;->b:La/a/a/a/c;

    return-object v0
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    const-class v1, Lcom/evernote/android/job/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/v;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    new-instance v1, Lcom/evernote/android/job/k;

    invoke-direct {v1, p0, v0}, Lcom/evernote/android/job/k;-><init>(Lcom/evernote/android/job/j;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->start()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/evernote/android/job/a;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->g:Lcom/evernote/android/job/g;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/g;->a(I)Lcom/evernote/android/job/a;

    move-result-object v0

    return-object v0
.end method

.method a(IZ)Lcom/evernote/android/job/n;
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/s;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/s;->a(I)Lcom/evernote/android/job/n;

    move-result-object v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/j;->g:Lcom/evernote/android/job/g;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/g;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/evernote/android/job/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/android/job/j;->h:Lcom/evernote/android/job/a/c;

    return-void
.end method

.method public a(Lcom/evernote/android/job/e;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Lcom/evernote/android/job/f;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/f;->a(Lcom/evernote/android/job/e;)V

    return-void
.end method

.method public a(Lcom/evernote/android/job/n;)V
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Lcom/evernote/android/job/f;

    invoke-virtual {v0}, Lcom/evernote/android/job/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/j;->b:La/a/a/a/c;

    const-string/jumbo v1, "you haven\'t registered a JobCreator with addJobCreator(), it\'s likely that your job never will be executed"

    invoke-virtual {v0, v1}, La/a/a/a/c;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/n;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/j;->b(Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/android/job/m;->a(Landroid/content/Context;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/evernote/android/job/n;->a(J)V

    iget-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/s;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/n;)V

    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p1}, Lcom/evernote/android/job/l;->b(Lcom/evernote/android/job/n;)V

    :goto_0
    return-void

    :cond_2
    invoke-interface {v0, p1}, Lcom/evernote/android/job/l;->a(Lcom/evernote/android/job/n;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    invoke-direct {p0, p1}, Lcom/evernote/android/job/j;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/j;->g:Lcom/evernote/android/job/g;

    invoke-virtual {v0}, Lcom/evernote/android/job/g;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/j;->a(IZ)Lcom/evernote/android/job/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/n;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/j;->a(I)Lcom/evernote/android/job/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/a;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/evernote/android/job/m;->a(Landroid/content/Context;I)V

    return v0
.end method

.method public c()Lcom/evernote/android/job/a/c;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->h:Lcom/evernote/android/job/a/c;

    return-object v0
.end method

.method d()Lcom/evernote/android/job/s;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->f:Lcom/evernote/android/job/s;

    return-object v0
.end method

.method e()Lcom/evernote/android/job/g;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->g:Lcom/evernote/android/job/g;

    return-object v0
.end method

.method f()Lcom/evernote/android/job/f;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->e:Lcom/evernote/android/job/f;

    return-object v0
.end method

.method g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/j;->d:Landroid/content/Context;

    return-object v0
.end method
