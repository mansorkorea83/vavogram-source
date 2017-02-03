.class Lcom/evernote/android/job/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/PowerManager$WakeLock;

.field final synthetic b:Lcom/evernote/android/job/j;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/j;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/android/job/k;->b:Lcom/evernote/android/job/j;

    iput-object p2, p0, Lcom/evernote/android/job/k;->a:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/evernote/android/job/k;->b:Lcom/evernote/android/job/j;

    invoke-static {v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;)Lcom/evernote/android/job/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/evernote/android/job/s;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/n;

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/evernote/android/job/k;->b:Lcom/evernote/android/job/j;

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->a()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/evernote/android/job/j;->a(I)Lcom/evernote/android/job/a;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->u()Lcom/evernote/android/job/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/q;->a()Lcom/evernote/android/job/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->t()I

    add-int/lit8 v0, v4, 0x1

    :goto_2
    move v4, v0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/evernote/android/job/k;->b:Lcom/evernote/android/job/j;

    invoke-static {v1, v0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/j;Lcom/evernote/android/job/n;)Lcom/evernote/android/job/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/evernote/android/job/l;->c(Lcom/evernote/android/job/n;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/evernote/android/job/j;->h()La/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "Reschedule %d jobs of %d jobs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/evernote/android/job/k;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/evernote/android/job/v;->a(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/k;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/v;->a(Landroid/os/PowerManager$WakeLock;)V

    throw v0

    :cond_4
    move v0, v4

    goto :goto_2
.end method
