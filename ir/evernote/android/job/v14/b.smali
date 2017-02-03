.class Lcom/evernote/android/job/v14/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/evernote/android/job/m;

.field final synthetic b:Lcom/evernote/android/job/n;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/evernote/android/job/v14/PlatformAlarmService;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/v14/PlatformAlarmService;Lcom/evernote/android/job/m;Lcom/evernote/android/job/n;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/android/job/v14/b;->d:Lcom/evernote/android/job/v14/PlatformAlarmService;

    iput-object p2, p0, Lcom/evernote/android/job/v14/b;->a:Lcom/evernote/android/job/m;

    iput-object p3, p0, Lcom/evernote/android/job/v14/b;->b:Lcom/evernote/android/job/n;

    iput-object p4, p0, Lcom/evernote/android/job/v14/b;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/v14/b;->a:Lcom/evernote/android/job/m;

    iget-object v1, p0, Lcom/evernote/android/job/v14/b;->b:Lcom/evernote/android/job/n;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/m;->d(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/d;

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/b;->c:Landroid/content/Intent;

    invoke-static {v0}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
