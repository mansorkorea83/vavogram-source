.class final Lorg/telegram/messenger/exoplayer/MediaCodecSelector$1;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/MediaCodecSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method
