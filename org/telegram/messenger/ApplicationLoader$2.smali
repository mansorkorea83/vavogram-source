.class Lorg/telegram/messenger/ApplicationLoader$2;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->initPlayServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ApplicationLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$2;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader$2;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    #calls: Lorg/telegram/messenger/ApplicationLoader;->checkPlayServices()Z
    invoke-static {v1}, Lorg/telegram/messenger/ApplicationLoader;->access$600(Lorg/telegram/messenger/ApplicationLoader;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "tmessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GCM regId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader$2;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ApplicationLoader;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "GCM Registration not found."

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "tmessages"

    const-string/jumbo v2, "No valid Google Play Services APK found."

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
