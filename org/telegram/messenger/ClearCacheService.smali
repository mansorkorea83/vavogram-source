.class public Lorg/telegram/messenger/ClearCacheService;
.super Landroid/app/IntentService;
.source "ClearCacheService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "ClearCacheService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "keep_media"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ClearCacheService$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/ClearCacheService$1;-><init>(Lorg/telegram/messenger/ClearCacheService;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
