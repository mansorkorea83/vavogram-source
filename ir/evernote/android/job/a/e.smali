.class public Lcom/evernote/android/job/a/e;
.super La/a/a/a/a/a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, La/a/a/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/a/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/a/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, La/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/a/e;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, La/a/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
