.class final Lcom/evernote/android/job/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/evernote/android/job/g;

.field private final b:Lcom/evernote/android/job/a;

.field private final c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;)V
    .locals 4

    iput-object p1, p0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    iget-object v0, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "JobExecutor"

    invoke-static {}, Lcom/evernote/android/job/g;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/v;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;Lcom/evernote/android/job/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/i;-><init>(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;)V

    return-void
.end method

.method private a(Lcom/evernote/android/job/d;)V
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/c;->d()Lcom/evernote/android/job/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->g()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/evernote/android/job/d;->c:Lcom/evernote/android/job/d;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/n;->a(Z)I

    move-result v0

    iget-object v1, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/evernote/android/job/n;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/evernote/android/job/d;->a:Lcom/evernote/android/job/d;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->v()V

    goto :goto_0
.end method

.method private b()Lcom/evernote/android/job/d;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->a()Lcom/evernote/android/job/d;

    move-result-object v0

    invoke-static {}, Lcom/evernote/android/job/g;->c()La/a/a/a/c;

    move-result-object v1

    const-string/jumbo v2, "Finished %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, La/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/evernote/android/job/i;->a(Lcom/evernote/android/job/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/evernote/android/job/g;->c()La/a/a/a/c;

    move-result-object v1

    const-string/jumbo v2, "Crashed %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v2, v3}, La/a/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->k()Lcom/evernote/android/job/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/evernote/android/job/d;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-virtual {v0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/evernote/android/job/g;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/v;->a(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    invoke-direct {p0}, Lcom/evernote/android/job/i;->b()Lcom/evernote/android/job/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/g;

    iget-object v2, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-static {v1, v2}, Lcom/evernote/android/job/g;->a(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;)V

    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/evernote/android/job/g;->c()La/a/a/a/c;

    move-result-object v1

    const-string/jumbo v2, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, La/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/v;->a(Landroid/os/PowerManager$WakeLock;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/i;->a:Lcom/evernote/android/job/g;

    iget-object v2, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    invoke-static {v1, v2}, Lcom/evernote/android/job/g;->a(Lcom/evernote/android/job/g;Lcom/evernote/android/job/a;)V

    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/evernote/android/job/g;->c()La/a/a/a/c;

    move-result-object v1

    const-string/jumbo v2, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/i;->b:Lcom/evernote/android/job/a;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, La/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/evernote/android/job/i;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/v;->a(Landroid/os/PowerManager$WakeLock;)V

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/android/job/i;->a()Lcom/evernote/android/job/d;

    move-result-object v0

    return-object v0
.end method
