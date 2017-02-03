.class public interface abstract Lorg/telegram/messenger/exoplayer/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/MediaCodecSelector$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecSelector$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer/DecoderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
