.class Lco/ronash/pushe/activities/h;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lco/ronash/pushe/activities/WebviewActivity;


# direct methods
.method private constructor <init>(Lco/ronash/pushe/activities/WebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/h;->a:Lco/ronash/pushe/activities/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/ronash/pushe/activities/WebviewActivity;Lco/ronash/pushe/activities/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/ronash/pushe/activities/h;-><init>(Lco/ronash/pushe/activities/WebviewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
