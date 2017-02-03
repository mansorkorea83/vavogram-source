.class public interface abstract Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
.end method

.method public abstract onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
.end method

.method public abstract onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
.end method
