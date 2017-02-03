.class public final Lcom/evernote/android/job/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/evernote/android/job/p;

.field public static final b:Lcom/evernote/android/job/r;

.field private static final c:La/a/a/a/c;


# instance fields
.field private final d:Lcom/evernote/android/job/q;

.field private final e:Lcom/evernote/android/job/a/c;

.field private f:I

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/p;

    sput-object v0, Lcom/evernote/android/job/n;->a:Lcom/evernote/android/job/p;

    sget-object v0, Lcom/evernote/android/job/r;->a:Lcom/evernote/android/job/r;

    sput-object v0, Lcom/evernote/android/job/n;->b:Lcom/evernote/android/job/r;

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobRequest"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/n;->c:La/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {p1}, Lcom/evernote/android/job/q;->a(Lcom/evernote/android/job/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/n;->e:Lcom/evernote/android/job/a/c;

    return-void

    :cond_0
    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/j;->c()Lcom/evernote/android/job/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/q;Lcom/evernote/android/job/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/n;-><init>(Lcom/evernote/android/job/q;)V

    return-void
.end method

.method static a(Landroid/database/Cursor;)Lcom/evernote/android/job/n;
    .locals 4

    new-instance v0, Lcom/evernote/android/job/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/q;-><init>(Landroid/database/Cursor;Lcom/evernote/android/job/o;)V

    invoke-virtual {v0}, Lcom/evernote/android/job/q;->a()Lcom/evernote/android/job/n;

    move-result-object v1

    const-string/jumbo v0, "numFailures"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/evernote/android/job/n;->f:I

    const-string/jumbo v0, "scheduledAt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/evernote/android/job/n;->g:J

    const-string/jumbo v0, "isTransient"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/evernote/android/job/n;->h:Z

    iget v0, v1, Lcom/evernote/android/job/n;->f:I

    const-string/jumbo v2, "failure count can\'t be negative"

    invoke-static {v0, v2}, Lcom/evernote/android/job/a/f;->a(ILjava/lang/String;)I

    iget-wide v2, v1, Lcom/evernote/android/job/n;->g:J

    const-string/jumbo v0, "scheduled at can\'t be negative"

    invoke-static {v2, v3, v0}, Lcom/evernote/android/job/a/f;->a(JLjava/lang/String;)J

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/q;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    return-object v0
.end method

.method static synthetic x()La/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/n;->c:La/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->b(Lcom/evernote/android/job/q;)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 3

    new-instance v0, Lcom/evernote/android/job/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/evernote/android/job/q;-><init>(Lcom/evernote/android/job/n;ZLcom/evernote/android/job/o;)V

    invoke-virtual {v0}, Lcom/evernote/android/job/q;->a()Lcom/evernote/android/job/n;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/evernote/android/job/n;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/evernote/android/job/n;->f:I

    :cond_0
    invoke-virtual {v0}, Lcom/evernote/android/job/n;->t()I

    move-result v0

    return v0
.end method

.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/evernote/android/job/n;->g:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->c(Lcom/evernote/android/job/q;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/evernote/android/job/n;->h:Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/n;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/j;->d()Lcom/evernote/android/job/s;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/n;Landroid/content/ContentValues;)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->d(Lcom/evernote/android/job/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->e(Lcom/evernote/android/job/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/evernote/android/job/p;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->f(Lcom/evernote/android/job/q;)Lcom/evernote/android/job/p;

    move-result-object v0

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
    check-cast p1, Lcom/evernote/android/job/n;

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    iget-object v1, p1, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->g(Lcom/evernote/android/job/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Z
    .locals 4

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v0

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

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->h(Lcom/evernote/android/job/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-virtual {v0}, Lcom/evernote/android/job/q;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->i(Lcom/evernote/android/job/q;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->j(Lcom/evernote/android/job/q;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->k(Lcom/evernote/android/job/q;)Z

    move-result v0

    return v0
.end method

.method public l()Lcom/evernote/android/job/r;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->l(Lcom/evernote/android/job/q;)Lcom/evernote/android/job/r;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->m(Lcom/evernote/android/job/q;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->n(Lcom/evernote/android/job/q;)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v0}, Lcom/evernote/android/job/q;->a(Lcom/evernote/android/job/q;)Z

    move-result v0

    return v0
.end method

.method p()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/evernote/android/job/o;->a:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->e()Lcom/evernote/android/job/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/p;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/evernote/android/job/n;->f:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->f()J

    move-result-wide v2

    mul-long/2addr v0, v2

    :cond_1
    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/evernote/android/job/n;->f:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->f()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000

    iget v4, p0, Lcom/evernote/android/job/n;->f:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method q()Lcom/evernote/android/job/a/c;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/n;->e:Lcom/evernote/android/job/a/c;

    return-object v0
.end method

.method r()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/n;->g:J

    return-wide v0
.end method

.method s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/n;->h:Z

    return v0
.end method

.method public t()I
    .locals 1

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/n;)V

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->b()Ljava/lang/String;

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

.method public u()Lcom/evernote/android/job/q;
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/j;->b(I)Z

    new-instance v0, Lcom/evernote/android/job/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/evernote/android/job/q;-><init>(Lcom/evernote/android/job/n;ZLcom/evernote/android/job/o;)V

    iput-boolean v2, p0, Lcom/evernote/android/job/n;->h:Z

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/n;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->c()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/evernote/android/job/n;->d()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/evernote/android/job/q;->a(JJ)Lcom/evernote/android/job/q;

    :cond_0
    return-object v0
.end method

.method v()V
    .locals 3

    iget v0, p0, Lcom/evernote/android/job/n;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evernote/android/job/n;->f:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/n;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/j;->d()Lcom/evernote/android/job/s;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/n;Landroid/content/ContentValues;)V

    return-void
.end method

.method w()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/evernote/android/job/n;->d:Lcom/evernote/android/job/q;

    invoke-static {v1, v0}, Lcom/evernote/android/job/q;->a(Lcom/evernote/android/job/q;Landroid/content/ContentValues;)V

    const-string/jumbo v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/n;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "scheduledAt"

    iget-wide v2, p0, Lcom/evernote/android/job/n;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/n;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
