.class Lcom/evernote/android/job/v21/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/evernote/android/job/m;

.field final synthetic b:Lcom/evernote/android/job/n;

.field final synthetic c:Landroid/app/job/JobParameters;

.field final synthetic d:Lcom/evernote/android/job/v21/PlatformJobService;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/v21/PlatformJobService;Lcom/evernote/android/job/m;Lcom/evernote/android/job/n;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/android/job/v21/c;->d:Lcom/evernote/android/job/v21/PlatformJobService;

    iput-object p2, p0, Lcom/evernote/android/job/v21/c;->a:Lcom/evernote/android/job/m;

    iput-object p3, p0, Lcom/evernote/android/job/v21/c;->b:Lcom/evernote/android/job/n;

    iput-object p4, p0, Lcom/evernote/android/job/v21/c;->c:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v21/c;->a:Lcom/evernote/android/job/m;

    iget-object v1, p0, Lcom/evernote/android/job/v21/c;->b:Lcom/evernote/android/job/n;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/m;->d(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/evernote/android/job/v21/c;->d:Lcom/evernote/android/job/v21/PlatformJobService;

    iget-object v1, p0, Lcom/evernote/android/job/v21/c;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v3}, Lcom/evernote/android/job/v21/PlatformJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/c;->d:Lcom/evernote/android/job/v21/PlatformJobService;

    iget-object v2, p0, Lcom/evernote/android/job/v21/c;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v3}, Lcom/evernote/android/job/v21/PlatformJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    throw v0
.end method
