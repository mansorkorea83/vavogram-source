.class Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;

.field final synthetic val$e:Landroid/media/MediaCodec$CryptoException;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;->val$e:Landroid/media/MediaCodec$CryptoException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;

    #getter for: Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;->access$000(Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$2;->val$e:Landroid/media/MediaCodec$CryptoException;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecTrackRenderer$EventListener;->onCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    return-void
.end method
