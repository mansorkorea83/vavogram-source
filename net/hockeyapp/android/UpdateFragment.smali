.class public Lnet/hockeyapp/android/UpdateFragment;
.super Landroid/app/DialogFragment;
.source "UpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/hockeyapp/android/UpdateInfoListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final FRAGMENT_URL:Ljava/lang/String; = "url"

.field public static final FRAGMENT_VERSION_INFO:Ljava/lang/String; = "versionInfo"


# instance fields
.field private mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

.field private mUrlString:Ljava/lang/String;

.field private mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

.field private mVersionInfo:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONArray;Ljava/lang/String;)Lnet/hockeyapp/android/UpdateFragment;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "versionInfo"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/hockeyapp/android/UpdateFragment;

    invoke-direct {v1}, Lnet/hockeyapp/android/UpdateFragment;-><init>()V

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/UpdateFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private startDownloadTask(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->mUrlString:Ljava/lang/String;

    new-instance v2, Lnet/hockeyapp/android/UpdateFragment$3;

    invoke-direct {v2, p0, p1}, Lnet/hockeyapp/android/UpdateFragment$3;-><init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1, v2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->mDownloadTask:Lnet/hockeyapp/android/tasks/DownloadFileTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public getCurrentVersionCode()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnet/hockeyapp/android/R$layout;->hockeyapp_fragment_update:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->prepareDownload()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->mUrlString:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "versionInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->mVersionInfo:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v2, 0x1030073

    invoke-virtual {p0, v1, v2}, Lnet/hockeyapp/android/UpdateFragment;->setStyle(II)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getLayoutView()Landroid/view/View;

    move-result-object v17

    new-instance v3, Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hockeyapp/android/UpdateFragment;->mVersionInfo:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v5, v0}, Lnet/hockeyapp/android/utils/VersionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hockeyapp/android/UpdateFragment;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    sget v3, Lnet/hockeyapp/android/R$id;->label_title:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lnet/hockeyapp/android/R$id;->label_version:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateFragment;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateFragment;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    invoke-virtual {v3}, Lnet/hockeyapp/android/utils/VersionHelper;->getFileDateString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "Unknown size"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hockeyapp/android/UpdateFragment;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

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

    move/from16 v18, v0

    const/high16 v19, 0x4980

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v6, v7

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

    invoke-virtual {v0, v3, v4}, Lnet/hockeyapp/android/UpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lnet/hockeyapp/android/R$id;->button_update:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lnet/hockeyapp/android/R$id;->web_update_details:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroyDrawingCache()V

    const-string/jumbo v3, "https://sdk.hockeyapp.net/"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateFragment;->mVersionHelper:Lnet/hockeyapp/android/utils/VersionHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/hockeyapp/android/utils/VersionHelper;->getReleaseNotes(Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v17

    :cond_0
    new-instance v13, Lnet/hockeyapp/android/tasks/GetFileSizeTask;

    invoke-virtual/range {p0 .. p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hockeyapp/android/UpdateFragment;->mUrlString:Ljava/lang/String;

    new-instance v5, Lnet/hockeyapp/android/UpdateFragment$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v15, v1, v11}, Lnet/hockeyapp/android/UpdateFragment$1;-><init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v3, v4, v5}, Lnet/hockeyapp/android/tasks/GetFileSizeTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V

    invoke-static {v13}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

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

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

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

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_update_title:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_update_message:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_dialog_negative_button:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lnet/hockeyapp/android/R$string;->hockeyapp_permission_dialog_positive_button:I

    invoke-virtual {p0, v3}, Lnet/hockeyapp/android/UpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/UpdateFragment$2;

    invoke-direct {v4, p0, v1}, Lnet/hockeyapp/android/UpdateFragment$2;-><init>(Lnet/hockeyapp/android/UpdateFragment;Lnet/hockeyapp/android/UpdateFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public prepareDownload()V
    .locals 4

    const/4 v3, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Lnet/hockeyapp/android/UpdateFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->dismiss()V

    goto :goto_0
.end method
