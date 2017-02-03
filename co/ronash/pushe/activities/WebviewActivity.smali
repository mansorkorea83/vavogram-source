.class public Lco/ronash/pushe/activities/WebviewActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/ronash/pushe/activities/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lco/ronash/pushe/activities/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "webview_original_msgId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->b:Ljava/lang/String;

    sget v0, Lco/ronash/pushe/R$layout;->webview_layout:I

    invoke-virtual {p0, v0}, Lco/ronash/pushe/activities/WebviewActivity;->setContentView(I)V

    sget v0, Lco/ronash/pushe/R$id;->pushe_webview:I

    invoke-virtual {p0, v0}, Lco/ronash/pushe/activities/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    const-string/jumbo v0, "co.ronash.pushe.SHOW_WEBVIEW"

    invoke-virtual {p0}, Lco/ronash/pushe/activities/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lco/ronash/pushe/c/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "abcd"

    iput-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->a:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lco/ronash/pushe/activities/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/ronash/pushe/activities/h;-><init>(Lco/ronash/pushe/activities/WebviewActivity;Lco/ronash/pushe/activities/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lco/ronash/pushe/activities/i;

    invoke-direct {v1, p0, p0}, Lco/ronash/pushe/activities/i;-><init>(Lco/ronash/pushe/activities/WebviewActivity;Landroid/content/Context;)V

    const-string/jumbo v2, "app"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/WebviewActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lco/ronash/pushe/activities/WebviewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Show Webview has error"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "error"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_0
.end method
