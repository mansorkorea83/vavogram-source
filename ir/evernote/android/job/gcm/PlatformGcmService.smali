.class public Lcom/evernote/android/job/gcm/PlatformGcmService;
.super Lcom/google/android/gms/gcm/GcmTaskService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/evernote/android/job/m;

    invoke-direct {v2, p0, v1}, Lcom/evernote/android/job/m;-><init>(Landroid/app/Service;I)V

    invoke-virtual {v2}, Lcom/evernote/android/job/m;->a()Lcom/evernote/android/job/n;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/evernote/android/job/m;->b()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/evernote/android/job/m;->d(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/d;

    move-result-object v1

    sget-object v2, Lcom/evernote/android/job/d;->a:Lcom/evernote/android/job/d;

    invoke-virtual {v2, v1}, Lcom/evernote/android/job/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
