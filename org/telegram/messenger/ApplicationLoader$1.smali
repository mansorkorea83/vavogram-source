.class final Lorg/telegram/messenger/ApplicationLoader$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v8, 0xf4241

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "selectedBackground"

    const v6, 0xf4241

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "selectedColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "serviceMessageColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$102(I)I

    const-string/jumbo v4, "serviceSelectedMessageColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$202(I)I

    if-nez v2, :cond_0

    if-ne v1, v8, :cond_4

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02006f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    if-nez v2, :cond_1

    const v2, -0x291b11

    :cond_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$100()I

    move-result v4

    if-nez v4, :cond_3

    #calls: Lorg/telegram/messenger/ApplicationLoader;->calcBackgroundColor()V
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$500()V

    :cond_3
    new-instance v4, Lorg/telegram/messenger/ApplicationLoader$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ApplicationLoader$1$1;-><init>(Lorg/telegram/messenger/ApplicationLoader$1;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v6, "wallpaper.jpg"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_5
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02006f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
