.class public Lnet/hockeyapp/android/utils/UiThreadUtil;
.super Ljava/lang/Object;
.source "UiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/UiThreadUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/hockeyapp/android/utils/UiThreadUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/UiThreadUtil;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/utils/UiThreadUtil$WbUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/UiThreadUtil;

    return-object v0
.end method


# virtual methods
.method public dismissLoading(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$2;

    invoke-direct {v1, p0, p2}, Lnet/hockeyapp/android/utils/UiThreadUtil$2;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dismissLoadingDialogAndDisplayError(Ljava/lang/ref/WeakReference;Landroid/app/ProgressDialog;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/ProgressDialog;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$1;

    invoke-direct {v1, p0, p2, v0, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$1;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/ProgressDialog;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public displayToastMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/hockeyapp/android/utils/UiThreadUtil$3;

    invoke-direct {v1, p0, v0, p2, p3}, Lnet/hockeyapp/android/utils/UiThreadUtil$3;-><init>(Lnet/hockeyapp/android/utils/UiThreadUtil;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
