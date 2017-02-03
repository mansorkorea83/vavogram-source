.class public Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VMRuntimeHack"
.end annotation


# instance fields
.field private runtime:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private trackAllocation:Ljava/lang/reflect/Method;

.field private trackFree:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 9

    const/4 v8, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    :try_start_0
    const-string/jumbo v4, "dalvik.system.VMRuntime"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "getRuntime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const-string/jumbo v4, "trackExternalAllocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    const-string/jumbo v4, "trackExternalFree"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    iput-object v8, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public trackAlloc(J)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0
.end method

.method public trackFree(J)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0
.end method
