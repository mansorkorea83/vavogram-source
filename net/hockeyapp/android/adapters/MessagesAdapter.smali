.class public Lnet/hockeyapp/android/adapters/MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessagesAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lnet/hockeyapp/android/objects/FeedbackMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/objects/FeedbackMessage;

    if-nez p2, :cond_1

    new-instance v1, Lnet/hockeyapp/android/views/FeedbackMessageView;

    iget-object v2, p0, Lnet/hockeyapp/android/adapters/MessagesAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setFeedbackMessage(Lnet/hockeyapp/android/objects/FeedbackMessage;)V

    :cond_0
    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setIndex(I)V

    return-object v1

    :cond_1
    move-object v1, p2

    check-cast v1, Lnet/hockeyapp/android/views/FeedbackMessageView;

    goto :goto_0
.end method
