.class public Lorg/telegram/messenger/browser/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/browser/Browser$NavigationCallback;
    }
.end annotation


# static fields
.field private static currentCustomTabsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

.field private static customTabsCurrentSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/support/customtabs/CustomTabsSession;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabsPackageToBind:Ljava/lang/String;

.field private static customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

.field private static customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-object p0
.end method

.method public static bindCustomTabsService(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_4

    :goto_1
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    :cond_2
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    new-instance v2, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;

    new-instance v3, Lorg/telegram/messenger/browser/Browser$1;

    invoke-direct {v3}, Lorg/telegram/messenger/browser/Browser$1;-><init>()V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;-><init>(Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;)V

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    sget-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_1
.end method

.method private static getCurrentSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    goto :goto_0
.end method

.method private static getSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_1

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    return-object v0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    new-instance v1, Lorg/telegram/messenger/browser/Browser$NavigationCallback;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/browser/Browser$NavigationCallback;-><init>(Lorg/telegram/messenger/browser/Browser$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->setCurrentSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    goto :goto_0
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "tg"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "telegram.me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "telegram.dog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isInternalUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static openUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method

.method public static openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 12

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-lt v7, v8, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    const-string/jumbo v7, "tel"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v8, Lorg/telegram/messenger/ShareBroadcastReceiver;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->getSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    const v7, -0xd7ca6d

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020020

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string/jumbo v8, "ShareFile"

    const v9, 0x7f080431

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->build()Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;

    move-result-object v3

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v3, p0, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v5, ""

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v4, :cond_4

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lorg/telegram/ui/All_01;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v7, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private static setCurrentSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 5

    const/4 v3, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v2, v4, :cond_0

    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    move-object v0, v3

    :goto_1
    if-ne v0, p0, :cond_2

    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_2
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sput-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    sput-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
