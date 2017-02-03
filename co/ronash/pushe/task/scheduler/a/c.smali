.class public Lco/ronash/pushe/task/scheduler/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/scheduler/a;
.implements Lcom/evernote/android/job/e;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lco/ronash/pushe/task/scheduler/a/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/android/job/j;->a(Landroid/content/Context;)Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/j;->a(Lcom/evernote/android/job/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/n;
    .locals 6

    new-instance v0, Lcom/evernote/android/job/q;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lco/ronash/pushe/task/scheduler/a/c;->a(Lcom/evernote/android/job/q;Lco/ronash/pushe/task/a/d;)V

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/q;->a(JJ)Lcom/evernote/android/job/q;

    invoke-virtual {v0}, Lcom/evernote/android/job/q;->a()Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/evernote/android/job/q;Lco/ronash/pushe/task/a/d;)V
    .locals 1

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/q;->b(Z)Lcom/evernote/android/job/q;

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/q;->a(Z)Lcom/evernote/android/job/q;

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/r;->b:Lcom/evernote/android/job/r;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/q;->a(Lcom/evernote/android/job/r;)Lcom/evernote/android/job/q;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/evernote/android/job/r;->a:Lcom/evernote/android/job/r;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/q;->a(Lcom/evernote/android/job/r;)Lcom/evernote/android/job/q;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/n;
    .locals 6

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long v2, v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    long-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/evernote/android/job/q;

    invoke-direct {v3, p1}, Lcom/evernote/android/job/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p2}, Lco/ronash/pushe/task/scheduler/a/c;->a(Lcom/evernote/android/job/q;Lco/ronash/pushe/task/a/d;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcom/evernote/android/job/q;->a(J)Lcom/evernote/android/job/q;

    invoke-virtual {v3}, Lcom/evernote/android/job/q;->a()Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/evernote/android/job/a;
    .locals 1

    new-instance v0, Lco/ronash/pushe/task/scheduler/a/a;

    invoke-direct {v0, p1}, Lco/ronash/pushe/task/scheduler/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/evernote/android/job/j;->a(Landroid/content/Context;)Lcom/evernote/android/job/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/j;->b(I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancel job :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lco/ronash/pushe/task/a/d;)V
    .locals 4

    sget-boolean v0, Lco/ronash/pushe/task/scheduler/a/c;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lco/ronash/pushe/task/scheduler/a/c;->a(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/n;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/evernote/android/job/n;->t()I

    move-result v0

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lco/ronash/pushe/task/scheduler/a/c;->b(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/n;

    move-result-object v0

    goto :goto_0
.end method
