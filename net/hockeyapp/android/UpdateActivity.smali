.class public Lnet/hockeyapp/android/UpdateActivity;
.super Landroid/app/Activity;
.source "UpdateActivity.java"

# interfaces
.implements Lnet/hockeyapp/android/UpdateActivityInterface;
.implements Lnet/hockeyapp/android/UpdateInfoListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_ERROR_ID:I = 0x0

.field public static final EXTRA_JSON:Ljava/lang/String; = "json"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

.field private mError:Lnet/hockeyapp/android/objects/ErrorObject;

.field protected mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lnet/hockeyapp/android/UpdateActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    return-object p1
.end method

.method private isUnknownSourcesChecked()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isWriteExternalStorageSet(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected configureView()V
    .locals 19

    sget v3, Lnet/hockeyapp/android/R$id;->label_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateActivity;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lnet/hockeyapp/android/R$id;->label_version:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateActivity;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateActivity;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileDateString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "Unknown size"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateActivity;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileSizeBytes()J

    move-result-wide v8

    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-float v0, v8

    move/from16 v17, v0

    const/high16 v18, 0x4980

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_update_version_details_label:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lnet/hockeyapp/android/UpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lnet/hockeyapp/android/R$id;->button_update:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lnet/hockeyapp/android/R$id;->web_update_details:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroyDrawingCache()V

    const-string/jumbo v3, "https://sdk.hockeyapp.net/"

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateActivity;->getReleaseNotes()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v13, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/UpdateActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v15, v1, v11}, Lnet/hockeyapp/android/UpdateActivity$3;-><init>(Lnet/hockeyapp/android/UpdateActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v4}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    invoke-static {v13}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method protected createDownloadTask(Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V
    .locals 1

    new-instance v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    return-void
.end method

.method public enableUpdateButton()V
    .locals 2

    sget v1, Lnet/hockeyapp/android/R$id;->button_update:I

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getCurrentVersionCode()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/hockeyapp/android/R$layout;->hockeyapp_activity_update:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getReleaseNotes()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/utils/VersionHelper;->getReleaseNotes(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->prepareDownload()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "App Update"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLayoutView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setContentView(Landroid/view/View;)V

    iput-object p0, p0, Lnet/hockeyapp/android/UpdateActivity;->mContext:Landroid/content/Context;

    new-instance v0, Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "json"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lnet/hockeyapp/android/utils/VersionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->configureView()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->attach(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/hockeyapp/android/UpdateActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "An error has occured"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/UpdateActivity$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/UpdateActivity$1;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-virtual {v1}, Lnet/hockeyapp/android/objects/ErrorObject;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "An unknown error has occured."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->enableUpdateButton()V

    array-length v2, p2

    if-eqz v2, :cond_0

    array-length v2, p3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    aget v2, p3, v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->prepareDownload()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "User denied write permission, can\'t continue with updater task."

    invoke-static {v2}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;)V

    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdatePermissionsNotGranted()V

    goto :goto_0

    :cond_3
    move-object v1, p0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/hockeyapp/android/UpdateActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_update_title:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_update_message:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_dialog_negative_button:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_dialog_positive_button:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/UpdateActivity$2;

    invoke-direct {v4, p0, v1}, Lnet/hockeyapp/android/UpdateActivity$2;-><init>(Lnet/hockeyapp/android/UpdateActivity;Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->detach()V

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    return-object v0
.end method

.method protected prepareDownload()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_error_no_network_message:I

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$5;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$5;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->isWriteExternalStorageSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Lnet/hockeyapp/android/UpdateActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    const-string/jumbo v1, "The permission to access the external storage permission is not set. Please contact the developer."

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$6;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$6;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->isUnknownSourcesChecked()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;

    invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mError:Lnet/hockeyapp/android/objects/ErrorObject;

    const-string/jumbo v1, "The installation from unknown sources is not enabled. Please check the device settings."

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->setMessage(Ljava/lang/String;)V

    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$7;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$7;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V

    goto :goto_0
.end method

.method protected startDownloadTask()V
    .locals 3

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask(Ljava/lang/String;)V

    return-void
.end method

.method protected startDownloadTask(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$4;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$4;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, p1, v0}, Lnet/hockeyapp/android/UpdateActivity;->createDownloadTask(Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    return-void
.end method
