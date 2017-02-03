.class public interface abstract Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper$Provider;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract getBandwidthMeter()Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;
.end method

.method public abstract getCodecCounters()Lorg/telegram/messenger/exoplayer/CodecCounters;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getFormat()Lorg/telegram/messenger/exoplayer/chunk/Format;
.end method
