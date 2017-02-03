.class public Lorg/telegram/messenger/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "tmessages.24"

.field private static final LIB_SO_NAME:Ljava/lang/String; = "libtmessages.24.so"

.field private static final LIB_VERSION:I = 0x18

.field private static final LOCALE_LIB_SO_NAME:Ljava/lang/String; = "libtmessages.24loc.so"

.field private static volatile nativeLoaded:Z


# instance fields
.field private crashPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/NativeLoader;->crashPath:Ljava/lang/String;

    return-void
.end method

.method private static getNativeLibraryDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v4, "nativeLibraryDir"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v4, "lib"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static native init(Ljava/lang/String;Z)V
.end method

.method public static declared-synchronized initNativeLibs(Landroid/content/Context;)V
    .locals 11

    const-class v8, Lorg/telegram/messenger/NativeLoader;

    monitor-enter v8

    :try_start_0
    sget-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    :cond_1
    :try_start_1
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "armeabi-v7a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v5, "armeabi-v7a"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    :try_start_3
    const-string/jumbo v7, "os.arch"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v7, "686"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v5, "x86"

    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/NativeLoader;->getNativeLibraryDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "libtmessages.24.so"

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "tmessages"

    const-string/jumbo v9, "load normal lib"

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string/jumbo v7, "tmessages.24"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v7, v9}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_5
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v1, v2

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v9, "lib"

    invoke-direct {v0, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "libtmessages.24loc.so"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result v7

    if-eqz v7, :cond_5

    :try_start_6
    const-string/jumbo v7, "tmessages"

    const-string/jumbo v9, "Load local lib"

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v7, v9}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_7
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    const-string/jumbo v7, "tmessages"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Library not found, arch = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v3, v5}, Lorg/telegram/messenger/NativeLoader;->loadFromZip(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    move-result v7

    if-nez v7, :cond_0

    :goto_2
    :try_start_8
    const-string/jumbo v7, "tmessages.24"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v7, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v7, v9}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :try_start_9
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_6
    :try_start_a
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "armeabi"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v5, "armeabi"

    goto/16 :goto_1

    :cond_7
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "x86"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v5, "x86"

    goto/16 :goto_1

    :cond_8
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v9, "mips"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v5, "mips"

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "armeabi"

    const-string/jumbo v7, "tmessages"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported arch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    :catch_3
    move-exception v4

    :try_start_b
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v5, "armeabi"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v4

    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2
.end method

.method private static loadFromZip(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 12

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v3, v10, v9

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_1
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "libtmessages.24.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to find file in apk:lib/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "tmessages.24"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    move-object v7, v8

    :goto_1
    :try_start_3
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_2
    :goto_3
    const/4 v9, 0x0

    :goto_4
    return v9

    :cond_3
    :try_start_6
    invoke-virtual {v8, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x1000

    new-array v0, v9, [B

    :goto_5
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v9

    move-object v7, v8

    :goto_6
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :cond_4
    :goto_7
    if-eqz v7, :cond_5

    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :cond_5
    :goto_8
    throw v9

    :cond_6
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Ljava/io/File;->setWritable(Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v9, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-static {v9, v10}, Lorg/telegram/messenger/NativeLoader;->init(Ljava/lang/String;Z)V

    const/4 v9, 0x1

    sput-boolean v9, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_9
    const/4 v9, 0x1

    if-eqz v6, :cond_7

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_7
    :goto_a
    if-eqz v8, :cond_8

    :try_start_c
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_b
    move-object v7, v8

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_d
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_9

    :catch_3
    move-exception v1

    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_4
    move-exception v1

    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_5
    move-exception v1

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v1

    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_7
    move-exception v1

    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_8
    move-exception v1

    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_1
    move-exception v9

    goto :goto_6

    :catch_9
    move-exception v1

    goto/16 :goto_1
.end method
