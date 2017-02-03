.class public abstract Lcom/evernote/android/job/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:La/a/a/a/c;


# instance fields
.field private b:Lcom/evernote/android/job/c;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:J

.field private g:Lcom/evernote/android/job/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "Job"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/a;->a:La/a/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/evernote/android/job/a;->f:J

    sget-object v0, Lcom/evernote/android/job/d;->b:Lcom/evernote/android/job/d;

    iput-object v0, p0, Lcom/evernote/android/job/a;->g:Lcom/evernote/android/job/d;

    return-void
.end method

.method private l()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/c;->d()Lcom/evernote/android/job/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/n;->i()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/evernote/android/job/a;->a:La/a/a/a/c;

    const-string/jumbo v2, "Job requires charging, reschedule"

    invoke-virtual {v0, v2}, La/a/a/a/c;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->c()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v0, Lcom/evernote/android/job/a;->a:La/a/a/a/c;

    const-string/jumbo v2, "Job requires device to be idle, reschedule"

    invoke-virtual {v0, v2}, La/a/a/a/c;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/evernote/android/job/a;->a:La/a/a/a/c;

    const-string/jumbo v3, "Job requires network to be %s, but was %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/android/job/c;->d()Lcom/evernote/android/job/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/evernote/android/job/a/a;->c(Landroid/content/Context;)Lcom/evernote/android/job/r;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lcom/evernote/android/job/a;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/evernote/android/job/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method final a(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/a;
    .locals 2

    new-instance v0, Lcom/evernote/android/job/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/evernote/android/job/c;-><init>(Lcom/evernote/android/job/n;Lcom/evernote/android/job/b;)V

    iput-object v0, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    return-object p0
.end method

.method final a()Lcom/evernote/android/job/d;
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/evernote/android/job/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/a;->a(Lcom/evernote/android/job/c;)Lcom/evernote/android/job/d;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/a;->g:Lcom/evernote/android/job/d;

    :goto_0
    iget-object v0, p0, Lcom/evernote/android/job/a;->g:Lcom/evernote/android/job/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/android/job/a;->f:J

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/android/job/d;->b:Lcom/evernote/android/job/d;

    :goto_1
    iput-object v0, p0, Lcom/evernote/android/job/a;->g:Lcom/evernote/android/job/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/android/job/a;->f:J

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/evernote/android/job/d;->c:Lcom/evernote/android/job/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected abstract a(Lcom/evernote/android/job/c;)Lcom/evernote/android/job/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method protected a(I)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method protected b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/c;->d()Lcom/evernote/android/job/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/c;->d()Lcom/evernote/android/job/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->e()Lcom/evernote/android/job/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/c;->d()Lcom/evernote/android/job/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v1

    sget-object v2, Lcom/evernote/android/job/b;->a:[I

    invoke-virtual {v1}, Lcom/evernote/android/job/r;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/a/a;->c(Landroid/content/Context;)Lcom/evernote/android/job/r;

    move-result-object v0

    sget-object v1, Lcom/evernote/android/job/r;->c:Lcom/evernote/android/job/r;

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/android/job/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/a/a;->c(Landroid/content/Context;)Lcom/evernote/android/job/r;

    move-result-object v1

    sget-object v2, Lcom/evernote/android/job/r;->a:Lcom/evernote/android/job/r;

    invoke-virtual {v2, v1}, Lcom/evernote/android/job/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final e()Lcom/evernote/android/job/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/evernote/android/job/a;

    iget-object v0, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    iget-object v1, p1, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final f()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/android/job/a;->d:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/a;->e:Z

    :cond_0
    return-void
.end method

.method protected final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/a;->e:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    invoke-virtual {v0}, Lcom/evernote/android/job/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4

    iget-wide v0, p0, Lcom/evernote/android/job/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final j()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/a;->f:J

    return-wide v0
.end method

.method final k()Lcom/evernote/android/job/d;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/a;->g:Lcom/evernote/android/job/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    invoke-virtual {v1}, Lcom/evernote/android/job/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/a;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->g:Lcom/evernote/android/job/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/evernote/android/job/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", periodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    invoke-virtual {v1}, Lcom/evernote/android/job/c;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/a;->b:Lcom/evernote/android/job/c;

    invoke-virtual {v1}, Lcom/evernote/android/job/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
