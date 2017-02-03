.class public interface abstract Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onManifestError(Ljava/io/IOException;)V
.end method

.method public abstract onManifestRefreshStarted()V
.end method

.method public abstract onManifestRefreshed()V
.end method
