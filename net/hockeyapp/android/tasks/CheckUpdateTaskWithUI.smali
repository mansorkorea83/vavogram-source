.class public Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;
.super Lnet/hockeyapp/android/tasks/CheckUpdateTask;
.source "CheckUpdateTaskWithUI.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/AlertDialog;

.field protected mIsDialogRequired:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mIsDialogRequired:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    :cond_0
    iput-boolean p5, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mIsDialogRequired:Z

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showUpdateFragment(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    return-void
.end method

.method private showDialog(Lorg/json/JSONArray;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getCachingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HockeyUpdate"

    const-string/jumbo v4, "Caching is enabled. Setting version to cached one."

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/VersionCache;->setVersionInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_update_dialog_title:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mandatory:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_update_dialog_message:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_update_dialog_negative_button:I

    new-instance v4, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;

    invoke-direct {v4, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$1;-><init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_update_dialog_positive_button:I

    new-instance v4, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;

    invoke-direct {v4, p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;-><init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lnet/hockeyapp/android/utils/Util;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    sget v4, Lnet/hockeyapp/android/R$string;->hockeyapp_update_mandatory_toast:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private showUpdateFragment(Lorg/json/JSONArray;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const/16 v6, 0x1001

    invoke-virtual {v3, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v7, "hockey_update_dialog"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v3, v8}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-class v2, Lnet/hockeyapp/android/UpdateFragment;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v6}, Lnet/hockeyapp/android/UpdateManagerListener;->getUpdateFragmentClass()Ljava/lang/Class;

    move-result-object v2

    :cond_1
    :try_start_0
    const-string/jumbo v6, "newInstance"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/json/JSONArray;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "apk"

    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DialogFragment;

    const-string/jumbo v6, "hockey_update_dialog"

    invoke-virtual {v5, v3, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v6, "An exception happened while showing the update fragment:"

    invoke-static {v6}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, "Showing update activity instead."

    invoke-static {v6}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {v2}, Lnet/hockeyapp/android/UpdateManagerListener;->getUpdateActivityClass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-class v0, Lnet/hockeyapp/android/UpdateActivity;

    :cond_1
    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "json"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "apk"

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->getURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->cleanUp()V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->cleanUp()V

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public detach()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->detach()V

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->onPostExecute(Lorg/json/JSONArray;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->mIsDialogRequired:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showDialog(Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method
