.class public Lcom/evernote/android/job/v21/PlatformJobService;
.super Landroid/app/job/JobService;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:La/a/a/a/c;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "PlatformJobService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->a:La/a/a/a/c;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    new-instance v1, Lcom/evernote/android/job/m;

    invoke-direct {v1, p0, v0}, Lcom/evernote/android/job/m;-><init>(Landroid/app/Service;I)V

    invoke-virtual {v1}, Lcom/evernote/android/job/m;->a()Lcom/evernote/android/job/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/evernote/android/job/m;->b()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/evernote/android/job/v21/PlatformJobService;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/evernote/android/job/v21/c;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/evernote/android/job/v21/c;-><init>(Lcom/evernote/android/job/v21/PlatformJobService;Lcom/evernote/android/job/m;Lcom/evernote/android/job/n;Landroid/app/job/JobParameters;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/j;->a(I)Lcom/evernote/android/job/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->g()V

    sget-object v1, Lcom/evernote/android/job/v21/PlatformJobService;->a:La/a/a/a/c;

    const-string/jumbo v2, "Called onStopJob for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v4

    :cond_0
    sget-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->a:La/a/a/a/c;

    const-string/jumbo v1, "Called onStopJob, job %d not found"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
