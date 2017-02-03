.class public final Lcom/evernote/android/job/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:Lcom/evernote/android/job/p;

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/evernote/android/job/r;

.field private m:Lcom/evernote/android/job/a/a/b;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/q;->a:I

    const-string/jumbo v0, "tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->b:Ljava/lang/String;

    const-string/jumbo v0, "startMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/q;->c:J

    const-string/jumbo v0, "endMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/q;->d:J

    const-string/jumbo v0, "backoffMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/q;->e:J

    :try_start_0
    const-string/jumbo v0, "backoffPolicy"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/p;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/p;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "intervalMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/q;->g:J

    const-string/jumbo v0, "requirementsEnforced"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/evernote/android/job/q;->h:Z

    const-string/jumbo v0, "requiresCharging"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/evernote/android/job/q;->i:Z

    const-string/jumbo v0, "requiresDeviceIdle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/evernote/android/job/q;->j:Z

    const-string/jumbo v0, "exact"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/evernote/android/job/q;->k:Z

    :try_start_1
    const-string/jumbo v0, "networkType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/r;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/r;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    const-string/jumbo v0, "extras"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->n:Ljava/lang/String;

    const-string/jumbo v0, "persisted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    :goto_6
    iput-boolean v1, p0, Lcom/evernote/android/job/q;->o:Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/evernote/android/job/n;->x()La/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/evernote/android/job/n;->a:Lcom/evernote/android/job/p;

    iput-object v0, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/evernote/android/job/n;->x()La/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/evernote/android/job/n;->b:Lcom/evernote/android/job/r;

    iput-object v0, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/evernote/android/job/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/q;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/n;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/j;->d()Lcom/evernote/android/job/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/s;->a()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/evernote/android/job/q;->a:I

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->e:J

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->e()Lcom/evernote/android/job/p;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/q;->h:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/q;->i:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/q;->j:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/q;->k:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->l()Lcom/evernote/android/job/r;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    invoke-static {p1}, Lcom/evernote/android/job/n;->a(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/q;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/q;->m:Lcom/evernote/android/job/a/a/b;

    iput-object v0, p0, Lcom/evernote/android/job/q;->m:Lcom/evernote/android/job/a/a/b;

    invoke-static {p1}, Lcom/evernote/android/job/n;->a(Lcom/evernote/android/job/n;)Lcom/evernote/android/job/q;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/q;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/q;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/evernote/android/job/n;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/q;->o:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/n;->a()I

    move-result v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/n;ZLcom/evernote/android/job/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/q;-><init>(Lcom/evernote/android/job/n;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/q;->b:Ljava/lang/String;

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/j;->d()Lcom/evernote/android/job/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/s;->a()I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/q;->a:I

    iput-wide v2, p0, Lcom/evernote/android/job/q;->c:J

    iput-wide v2, p0, Lcom/evernote/android/job/q;->d:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/evernote/android/job/q;->e:J

    sget-object v0, Lcom/evernote/android/job/n;->a:Lcom/evernote/android/job/p;

    iput-object v0, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    sget-object v0, Lcom/evernote/android/job/n;->b:Lcom/evernote/android/job/r;

    iput-object v0, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    return-void
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 4

    const-string/jumbo v0, "_id"

    iget v1, p0, Lcom/evernote/android/job/q;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/evernote/android/job/q;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "startMs"

    iget-wide v2, p0, Lcom/evernote/android/job/q;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "endMs"

    iget-wide v2, p0, Lcom/evernote/android/job/q;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "backoffMs"

    iget-wide v2, p0, Lcom/evernote/android/job/q;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "backoffPolicy"

    iget-object v1, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    invoke-virtual {v1}, Lcom/evernote/android/job/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "intervalMs"

    iget-wide v2, p0, Lcom/evernote/android/job/q;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "requirementsEnforced"

    iget-boolean v1, p0, Lcom/evernote/android/job/q;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "requiresCharging"

    iget-boolean v1, p0, Lcom/evernote/android/job/q;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "requiresDeviceIdle"

    iget-boolean v1, p0, Lcom/evernote/android/job/q;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "exact"

    iget-boolean v1, p0, Lcom/evernote/android/job/q;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "networkType"

    iget-object v1, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    invoke-virtual {v1}, Lcom/evernote/android/job/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/evernote/android/job/q;->m:Lcom/evernote/android/job/a/a/b;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/q;->m:Lcom/evernote/android/job/a/a/b;

    invoke-virtual {v1}, Lcom/evernote/android/job/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "persisted"

    iget-boolean v1, p0, Lcom/evernote/android/job/q;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/q;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/q;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/evernote/android/job/q;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/q;->a(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lcom/evernote/android/job/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/evernote/android/job/q;)I
    .locals 1

    iget v0, p0, Lcom/evernote/android/job/q;->a:I

    return v0
.end method

.method static synthetic c(Lcom/evernote/android/job/q;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/evernote/android/job/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/evernote/android/job/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/evernote/android/job/q;)Lcom/evernote/android/job/p;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    return-object v0
.end method

.method static synthetic g(Lcom/evernote/android/job/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/q;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/evernote/android/job/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    return-wide v0
.end method

.method static synthetic i(Lcom/evernote/android/job/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/evernote/android/job/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/evernote/android/job/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->j:Z

    return v0
.end method

.method static synthetic l(Lcom/evernote/android/job/q;)Lcom/evernote/android/job/r;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    return-object v0
.end method

.method static synthetic m(Lcom/evernote/android/job/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->o:Z

    return v0
.end method

.method static synthetic n(Lcom/evernote/android/job/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->p:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/evernote/android/job/n;
    .locals 14

    const-wide v12, 0x2aaaaaaaaaaaaaaaL

    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    iget v0, p0, Lcom/evernote/android/job/q;->a:I

    const-string/jumbo v1, "id can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/a/f;->a(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/evernote/android/job/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-wide v0, p0, Lcom/evernote/android/job/q;->e:J

    const-string/jumbo v2, "backoffMs must be > 0"

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/a/f;->b(JLjava/lang/String;)J

    iget-object v0, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    const-wide/32 v2, 0xea60

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "intervalMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    :cond_0
    iget-boolean v0, p0, Lcom/evernote/android/job/q;->k:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExact() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/evernote/android/job/q;->k:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    iget-wide v2, p0, Lcom/evernote/android/job/q;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExecutionWindow() for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/evernote/android/job/q;->k:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->h:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/evernote/android/job/q;->i:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/evernote/android/job/n;->b:Lcom/evernote/android/job/r;

    iget-object v1, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t require any condition for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExecutionWindow() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_a

    iget-wide v0, p0, Lcom/evernote/android/job/q;->e:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    sget-object v0, Lcom/evernote/android/job/n;->a:Lcom/evernote/android/job/p;

    iget-object v1, p0, Lcom/evernote/android/job/q;->f:Lcom/evernote/android/job/p;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_c

    iget-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    cmp-long v0, v0, v12

    if-gtz v0, :cond_b

    iget-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_c

    :cond_b
    const-string/jumbo v0, "Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/blob/master/FAQ.md"

    invoke-static {v0}, La/a/a/a/a;->b(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Lcom/evernote/android/job/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/n;-><init>(Lcom/evernote/android/job/q;Lcom/evernote/android/job/o;)V

    return-object v0
.end method

.method public a(J)Lcom/evernote/android/job/q;
    .locals 7

    const-wide/32 v2, 0xea60

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "intervalMs"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->g:J

    return-object p0
.end method

.method public a(JJ)Lcom/evernote/android/job/q;
    .locals 7

    const-string/jumbo v0, "startMs must be greater than 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/a/f;->b(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "endMs"

    move-wide v0, p3

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    iget-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    const-wide v2, 0x5555555555555554L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "startMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/q;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v0, 0x5555555555555554L

    iput-wide v0, p0, Lcom/evernote/android/job/q;->c:J

    :cond_0
    iget-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    const-wide v2, 0x5555555555555554L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string/jumbo v0, "endMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/q;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v0, 0x5555555555555554L

    iput-wide v0, p0, Lcom/evernote/android/job/q;->d:J

    :cond_1
    return-object p0
.end method

.method public a(Lcom/evernote/android/job/r;)Lcom/evernote/android/job/q;
    .locals 0
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    iput-object p1, p0, Lcom/evernote/android/job/q;->l:Lcom/evernote/android/job/r;

    return-object p0
.end method

.method public a(Z)Lcom/evernote/android/job/q;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/evernote/android/job/j;->a()Lcom/evernote/android/job/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/j;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Does not have RECEIVE_BOOT_COMPLETED permission, which is mandatory for this feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/evernote/android/job/q;->o:Z

    return-object p0
.end method

.method public b(Z)Lcom/evernote/android/job/q;
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/android/job/q;->p:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/evernote/android/job/q;

    iget v2, p0, Lcom/evernote/android/job/q;->a:I

    iget v3, p1, Lcom/evernote/android/job/q;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/evernote/android/job/q;->a:I

    return v0
.end method
