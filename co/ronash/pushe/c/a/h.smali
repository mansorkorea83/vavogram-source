.class public Lco/ronash/pushe/c/a/h;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/g;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Lco/ronash/pushe/c/a/g;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lco/ronash/pushe/c/a/h;->a()V

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Lco/ronash/pushe/c/a/g;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error in setting notification\'s sound url"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/ronash/pushe/c/a/h;->b:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lco/ronash/pushe/c/a/h;->c:I

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, p0, Lco/ronash/pushe/c/a/h;->d:Landroid/app/Notification;

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lco/ronash/pushe/c/a/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->b(Lco/ronash/pushe/c/a/g;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lco/ronash/pushe/c/a/h;->a:Lco/ronash/pushe/c/a/g;

    invoke-static {v1}, Lco/ronash/pushe/c/a/g;->b(Lco/ronash/pushe/c/a/g;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lco/ronash/pushe/c/a/h;->d:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget v1, p0, Lco/ronash/pushe/c/a/h;->c:I

    iget-object v2, p0, Lco/ronash/pushe/c/a/h;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lco/ronash/pushe/c/a/i;

    invoke-direct {v1, p0}, Lco/ronash/pushe/c/a/i;-><init>(Lco/ronash/pushe/c/a/h;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_0

    iget v1, p0, Lco/ronash/pushe/c/a/h;->c:I

    iget-object v2, p0, Lco/ronash/pushe/c/a/h;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
