.class Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;
.super Ljava/lang/Object;
.source "AttachmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/tasks/AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadJob"
.end annotation


# instance fields
.field private final attachmentView:Lnet/hockeyapp/android/views/AttachmentView;

.field private final feedbackAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

.field private remainingRetries:I

.field private success:Z


# direct methods
.method private constructor <init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->feedbackAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->attachmentView:Lnet/hockeyapp/android/views/AttachmentView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->success:Z

    const/4 v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;Lnet/hockeyapp/android/tasks/AttachmentDownloader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;-><init>(Lnet/hockeyapp/android/objects/FeedbackAttachment;Lnet/hockeyapp/android/views/AttachmentView;)V

    return-void
.end method


# virtual methods
.method public consumeRetry()Z
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAttachmentView()Lnet/hockeyapp/android/views/AttachmentView;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->attachmentView:Lnet/hockeyapp/android/views/AttachmentView;

    return-object v0
.end method

.method public getFeedbackAttachment()Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->feedbackAttachment:Lnet/hockeyapp/android/objects/FeedbackAttachment;

    return-object v0
.end method

.method public hasRetry()Z
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->remainingRetries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/hockeyapp/android/tasks/AttachmentDownloader$DownloadJob;->success:Z

    return-void
.end method
