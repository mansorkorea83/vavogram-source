.class public final Lco/ronash/pushe/e/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lco/ronash/pushe/e/n;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lco/ronash/pushe/e/n;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lco/ronash/pushe/e/n;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/e/n;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    if-nez v0, :cond_0

    new-instance v0, Lco/ronash/pushe/e/n;

    invoke-direct {v0}, Lco/ronash/pushe/e/n;-><init>()V

    sput-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lco/ronash/pushe/e/n;->b:Ljava/lang/String;

    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const/4 v4, 0x0

    iput-object v4, v3, Lco/ronash/pushe/e/n;->c:Ljava/lang/String;

    :try_start_0
    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v4, "getDeviceIdGemini"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lco/ronash/pushe/e/n;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lco/ronash/pushe/e/n;->b:Ljava/lang/String;

    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v4, "getDeviceIdGemini"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lco/ronash/pushe/e/n;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lco/ronash/pushe/e/n;->c:Ljava/lang/String;
    :try_end_0
    .catch Lco/ronash/pushe/e/o; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lco/ronash/pushe/e/n;->d:Z

    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    iput-boolean v2, v0, Lco/ronash/pushe/e/n;->e:Z

    :try_start_1
    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v1, "getSimStateGemini"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lco/ronash/pushe/e/n;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lco/ronash/pushe/e/n;->d:Z

    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v1, "getSimStateGemini"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lco/ronash/pushe/e/n;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lco/ronash/pushe/e/n;->e:Z
    :try_end_1
    .catch Lco/ronash/pushe/e/o; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_2
    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    return-object v0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v4, "getDeviceId"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lco/ronash/pushe/e/n;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lco/ronash/pushe/e/n;->b:Ljava/lang/String;

    sget-object v3, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v4, "getDeviceId"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lco/ronash/pushe/e/n;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lco/ronash/pushe/e/n;->c:Ljava/lang/String;
    :try_end_2
    .catch Lco/ronash/pushe/e/o; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v1, "getSimState"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lco/ronash/pushe/e/n;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lco/ronash/pushe/e/n;->d:Z

    sget-object v0, Lco/ronash/pushe/e/n;->a:Lco/ronash/pushe/e/n;

    const-string/jumbo v1, "getSimState"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lco/ronash/pushe/e/n;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lco/ronash/pushe/e/n;->e:Z
    :try_end_3
    .catch Lco/ronash/pushe/e/o; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/e/o;

    invoke-direct {v0, p1}, Lco/ronash/pushe/e/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/e/o;

    invoke-direct {v0, p1}, Lco/ronash/pushe/e/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/e/n;->c:Ljava/lang/String;

    return-object v0
.end method
