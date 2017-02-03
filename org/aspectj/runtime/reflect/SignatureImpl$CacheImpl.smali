.class final Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;
.super Ljava/lang/Object;
.source "SignatureImpl.java"

# interfaces
.implements Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/reflect/SignatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheImpl"
.end annotation


# instance fields
.field private toStringCacheRef:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->makeCache()[Ljava/lang/String;

    return-void
.end method

.method private array()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->toStringCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private makeCache()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->toStringCacheRef:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->array()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p1

    goto :goto_0
.end method

.method public set(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->array()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->makeCache()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object p2, v0, p1

    return-void
.end method
