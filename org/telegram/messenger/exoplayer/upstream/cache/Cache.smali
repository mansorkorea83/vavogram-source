.class public interface abstract Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract commitFile(Ljava/io/File;)V
.end method

.method public abstract getCacheSpace()J
.end method

.method public abstract getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCached(Ljava/lang/String;JJ)Z
.end method

.method public abstract releaseHoleSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
.end method

.method public abstract removeListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;)V
.end method

.method public abstract removeSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
.end method

.method public abstract startFile(Ljava/lang/String;JJ)Ljava/io/File;
.end method

.method public abstract startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
.end method
