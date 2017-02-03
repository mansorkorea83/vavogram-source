.class public Lco/ronash/pushe/task/scheduler/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:I

.field private f:J

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    invoke-static {v0, p0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;)V

    iget-boolean v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/b/b;->j()V

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->c:Z

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    invoke-static {v0, p0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;)V

    iget-boolean v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/b/b;->j()V

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->h:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->f:J

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->g:Z

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    invoke-static {v0, p0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;)V

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/b/b;->k()V

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/b/b;->j()V

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;Z)V

    invoke-static {}, Lco/ronash/pushe/task/scheduler/b/a;->d()Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/a;)V

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lco/ronash/pushe/task/scheduler/b/b;->a:J

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->c:Z

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->d:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    return v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->f:J

    return-wide v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->g:Z

    return v0
.end method

.method public j()V
    .locals 6

    iget v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lco/ronash/pushe/task/scheduler/b/b;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->d:J

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    const-wide/high16 v2, 0x4000

    iget v4, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->d:J

    goto :goto_0
.end method

.method public k()V
    .locals 2

    iget v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->e:I

    :cond_0
    return-void
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->a:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/task/scheduler/b/b;->h:I

    return v0
.end method
