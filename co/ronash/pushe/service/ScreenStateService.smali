.class public Lco/ronash/pushe/service/ScreenStateService;
.super Landroid/app/Service;


# instance fields
.field private a:Lco/ronash/pushe/receiver/BootAndScreenReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lco/ronash/pushe/receiver/BootAndScreenReceiver;

    invoke-direct {v1}, Lco/ronash/pushe/receiver/BootAndScreenReceiver;-><init>()V

    iput-object v1, p0, Lco/ronash/pushe/service/ScreenStateService;->a:Lco/ronash/pushe/receiver/BootAndScreenReceiver;

    iget-object v1, p0, Lco/ronash/pushe/service/ScreenStateService;->a:Lco/ronash/pushe/receiver/BootAndScreenReceiver;

    invoke-virtual {p0, v1, v0}, Lco/ronash/pushe/service/ScreenStateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lco/ronash/pushe/service/ScreenStateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Landroid/content/Context;)Lcom/evernote/android/job/j;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-virtual {p0}, Lco/ronash/pushe/service/ScreenStateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/ronash/pushe/task/scheduler/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/e;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/service/ScreenStateService;->a:Lco/ronash/pushe/receiver/BootAndScreenReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/service/ScreenStateService;->a:Lco/ronash/pushe/receiver/BootAndScreenReceiver;

    invoke-virtual {p0, v0}, Lco/ronash/pushe/service/ScreenStateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
