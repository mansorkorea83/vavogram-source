.class public interface abstract Lorg/telegram/messenger/exoplayer/chunk/BaseChunkSampleSourceEventListener;
.super Ljava/lang/Object;
.source "BaseChunkSampleSourceEventListener.java"


# virtual methods
.method public abstract onDownstreamFormatChanged(ILorg/telegram/messenger/exoplayer/chunk/Format;IJ)V
.end method

.method public abstract onLoadCanceled(IJ)V
.end method

.method public abstract onLoadCompleted(IJIILorg/telegram/messenger/exoplayer/chunk/Format;JJJJ)V
.end method

.method public abstract onLoadError(ILjava/io/IOException;)V
.end method

.method public abstract onLoadStarted(IJIILorg/telegram/messenger/exoplayer/chunk/Format;JJ)V
.end method

.method public abstract onUpstreamDiscarded(IJJ)V
.end method
