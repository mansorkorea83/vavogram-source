.class public abstract Lnet/hockeyapp/android/FeedbackManagerListener;
.super Ljava/lang/Object;
.source "FeedbackManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract feedbackAnswered(Lnet/hockeyapp/android/objects/FeedbackMessage;)Z
.end method

.method public getFeedbackActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/hockeyapp/android/FeedbackActivity;",
            ">;"
        }
    .end annotation

    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    return-object v0
.end method
