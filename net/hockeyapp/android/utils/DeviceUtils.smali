.class public Lnet/hockeyapp/android/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/DeviceUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/hockeyapp/android/utils/DeviceUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/DeviceUtils;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;->INSTANCE:Lnet/hockeyapp/android/utils/DeviceUtils;

    return-object v0
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getCurrentVersionCode(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
