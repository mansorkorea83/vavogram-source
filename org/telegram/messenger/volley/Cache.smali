.class public interface abstract Lorg/telegram/messenger/volley/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/volley/Cache$Entry;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Lorg/telegram/messenger/volley/Cache$Entry;
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidate(Ljava/lang/String;Z)V
.end method

.method public abstract put(Ljava/lang/String;Lorg/telegram/messenger/volley/Cache$Entry;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
