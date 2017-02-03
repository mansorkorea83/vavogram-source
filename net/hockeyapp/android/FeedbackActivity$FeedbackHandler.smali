.class Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;
.super Landroid/os/Handler;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedbackHandler"
.end annotation


# instance fields
.field private final mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/hockeyapp/android/FeedbackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v6, 0x0

    new-instance v1, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v1}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;->mWeakFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hockeyapp/android/FeedbackActivity;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v7, "feedback_response"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "feedback_status"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "request_type"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "send"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xc9

    if-eq v7, v8, :cond_3

    :cond_1
    sget v7, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_send_generic_error:I

    invoke-virtual {v2, v7}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    :goto_1
    #setter for: Lnet/hockeyapp/android/FeedbackActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;
    invoke-static {v2, v1}, Lnet/hockeyapp/android/FeedbackActivity;->access$002(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;

    if-nez v6, :cond_2

    new-instance v7, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;

    invoke-direct {v7, p0, v2}, Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$FeedbackHandler;Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v2, v7}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {v2, v6}, Lnet/hockeyapp/android/FeedbackActivity;->onSendFeedbackResult(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "fetch"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x194

    if-eq v7, v8, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x1a6

    if-ne v7, v8, :cond_5

    :cond_4
    #calls: Lnet/hockeyapp/android/FeedbackActivity;->resetFeedbackView()V
    invoke-static {v2}, Lnet/hockeyapp/android/FeedbackActivity;->access$600(Lnet/hockeyapp/android/FeedbackActivity;)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    #calls: Lnet/hockeyapp/android/FeedbackActivity;->startParseFeedbackTask(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v4, v3}, Lnet/hockeyapp/android/FeedbackActivity;->access$700(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    sget v7, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_send_network_error:I

    invoke-virtual {v2, v7}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget v7, Lnet/hockeyapp/android/R$string;->hockeyapp_feedback_send_generic_error:I

    invoke-virtual {v2, v7}, Lnet/hockeyapp/android/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    goto :goto_1
.end method
