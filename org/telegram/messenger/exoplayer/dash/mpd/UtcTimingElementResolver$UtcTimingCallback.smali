.class public interface abstract Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;
.super Ljava/lang/Object;
.source "UtcTimingElementResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElementResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UtcTimingCallback"
.end annotation


# virtual methods
.method public abstract onTimestampError(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V
.end method

.method public abstract onTimestampResolved(Lorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;J)V
.end method
