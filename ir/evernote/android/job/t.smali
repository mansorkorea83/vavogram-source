.class Lcom/evernote/android/job/t;
.super Landroid/support/v4/util/LruCache;


# instance fields
.field final synthetic a:Lcom/evernote/android/job/s;


# direct methods
.method public constructor <init>(Lcom/evernote/android/job/s;)V
    .locals 1

    iput-object p1, p0, Lcom/evernote/android/job/t;->a:Lcom/evernote/android/job/s;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)Lcom/evernote/android/job/n;
    .locals 3

    iget-object v0, p0, Lcom/evernote/android/job/t;->a:Lcom/evernote/android/job/s;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/s;IZ)Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/t;->a(Ljava/lang/Integer;)Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method
