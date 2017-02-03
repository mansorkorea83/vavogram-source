.class public Lorg/aspectj/runtime/internal/CFlowCounter;
.super Ljava/lang/Object;
.source "CFlowCounter.java"


# static fields
.field private static tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# instance fields
.field private flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->selectFactoryForVMVersion()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;->getNewThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    return-void
.end method

.method private static getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .locals 1

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;-><init>()V

    return-object v0
.end method

.method private static getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;
    .locals 1

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;-><init>()V

    return-object v0
.end method

.method public static getThreadStackFactoryClassName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectFactoryForVMVersion()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "aspectj.runtime.cflowstack.usethreadlocal"

    const-string/jumbo v6, "unspecified"

    invoke-static {v5, v6}, Lorg/aspectj/runtime/internal/CFlowCounter;->getSystemPropertyWithoutSecurityException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v5, "unspecified"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "java.class.version"

    const-string/jumbo v6, "0.0"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "46.0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->getThreadLocalStackFactory()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v3

    sput-object v3, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    :goto_1
    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/aspectj/runtime/internal/CFlowCounter;->getThreadLocalStackFactoryFor11()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    move-result-object v3

    sput-object v3, Lorg/aspectj/runtime/internal/CFlowCounter;->tsFactory:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    goto :goto_1
.end method


# virtual methods
.method public dec()V
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->dec()V

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->removeThreadCounter()V

    :cond_0
    return-void
.end method

.method public inc()V
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->inc()V

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->flowHeightHandler:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    return v0
.end method
