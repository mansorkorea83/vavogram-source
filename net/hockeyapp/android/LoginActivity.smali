.class public Lnet/hockeyapp/android/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/LoginActivity$LoginHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_SECRET:Ljava/lang/String; = "secret"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"


# instance fields
.field private mButtonLogin:Landroid/widget/Button;

.field private mLoginHandler:Landroid/os/Handler;

.field private mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

.field private mMode:I

.field private mSecret:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lnet/hockeyapp/android/LoginActivity;->performAuthentication()V

    return-void
.end method

.method private configureView()V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lnet/hockeyapp/android/LoginActivity;->mMode:I

    if-ne v2, v3, :cond_0

    sget v2, Lnet/hockeyapp/android/R$id;->input_password:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    sget v2, Lnet/hockeyapp/android/R$id;->text_headline:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lnet/hockeyapp/android/LoginActivity;->mMode:I

    if-ne v2, v3, :cond_1

    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_login_headline_text_email_only:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lnet/hockeyapp/android/R$id;->button_login:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->mButtonLogin:Landroid/widget/Button;

    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->mButtonLogin:Landroid/widget/Button;

    new-instance v3, Lnet/hockeyapp/android/LoginActivity$1;

    invoke-direct {v3, p0}, Lnet/hockeyapp/android/LoginActivity$1;-><init>(Lnet/hockeyapp/android/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    sget v2, Lnet/hockeyapp/android/R$string;->hockeyapp_login_headline_text:I

    goto :goto_0
.end method

.method private initLoginHandler()V
    .locals 1

    new-instance v0, Lnet/hockeyapp/android/LoginActivity$LoginHandler;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/LoginActivity$LoginHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginHandler:Landroid/os/Handler;

    return-void
.end method

.method private performAuthentication()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_error_no_network_message:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lnet/hockeyapp/android/R$id;->input_email:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget v0, Lnet/hockeyapp/android/R$id;->input_password:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lnet/hockeyapp/android/LoginActivity;->mMode:I

    if-ne v0, v1, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v9, v1

    :goto_1
    const-string/jumbo v0, "email"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "authcode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity;->mSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    if-eqz v9, :cond_5

    new-instance v0, Lnet/hockeyapp/android/tasks/LoginTask;

    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginHandler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity;->mUrl:Ljava/lang/String;

    iget v4, p0, Lnet/hockeyapp/android/LoginActivity;->mMode:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/LoginTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    move v9, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lnet/hockeyapp/android/LoginActivity;->mMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v9, v1

    :goto_3
    const-string/jumbo v0, "email"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "password"

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v9, v2

    goto :goto_3

    :cond_5
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_login_missing_credentials_toast:I

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, v5, v6

    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    return-object v6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string/jumbo v6, ""

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v2, Lnet/hockeyapp/android/R$layout;->hockeyapp_activity_login:I

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/LoginActivity;->setContentView(I)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->mUrl:Ljava/lang/String;

    const-string/jumbo v2, "secret"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->mSecret:Ljava/lang/String;

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lnet/hockeyapp/android/LoginActivity;->mMode:I

    :cond_0
    invoke-direct {p0}, Lnet/hockeyapp/android/LoginActivity;->configureView()V

    invoke-direct {p0}, Lnet/hockeyapp/android/LoginActivity;->initLoginHandler()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/LoginActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lnet/hockeyapp/android/tasks/LoginTask;

    iput-object v1, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3}, Lnet/hockeyapp/android/tasks/LoginTask;->attach(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    if-eqz v2, :cond_1

    sget-object v1, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    invoke-virtual {v1}, Lnet/hockeyapp/android/LoginManagerListener;->onBack()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->mainActivity:Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "net.hockeyapp.android.EXIT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/LoginTask;->detach()V

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->mLoginTask:Lnet/hockeyapp/android/tasks/LoginTask;

    return-object v0
.end method
