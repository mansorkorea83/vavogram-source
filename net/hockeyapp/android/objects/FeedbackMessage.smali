.class public Lnet/hockeyapp/android/objects/FeedbackMessage;
.super Ljava/lang/Object;
.source "FeedbackMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79c0036a37b8b480L


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCleanText:Ljava/lang/String;

.field private mCreatedAt:Ljava/lang/String;

.field private mDeviceModel:Ljava/lang/String;

.field private mDeviceOem:Ljava/lang/String;

.field private mDeviceOsVersion:Ljava/lang/String;

.field private mFeedbackAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUserString:Ljava/lang/String;

.field private mVia:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCleanText:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCreatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mFeedbackAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mId:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOem:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjec()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mUserString:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mVia:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setCleanText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCleanText:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mCreatedAt:Ljava/lang/String;

    return-void
.end method

.method public setFeedbackAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mFeedbackAttachments:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mId:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceModel:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOem:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mDeviceOsVersion:Ljava/lang/String;

    return-void
.end method

.method public setSubjec(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mText:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mToken:Ljava/lang/String;

    return-void
.end method

.method public setUserString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mUserString:Ljava/lang/String;

    return-void
.end method

.method public setVia(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->mVia:I

    return-void
.end method
