.class Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatJellybeanMr1"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    if-nez v1, :cond_0

    :try_start_0
    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v2, "getLayoutDirection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v4, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    :cond_0
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    if-nez v3, :cond_0

    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v4, "setLayoutDirection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    :cond_0
    sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    :try_start_1
    sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DrawableCompatJellybeanMr1"

    const-string/jumbo v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v3, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    move v1, v2

    goto :goto_1
.end method
