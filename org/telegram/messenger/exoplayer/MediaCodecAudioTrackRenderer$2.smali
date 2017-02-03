.class Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;

.field final synthetic val$e:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;->val$e:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;->this$0:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;

    #getter for: Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;->access$000(Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer;)Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$2;->val$e:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/MediaCodecAudioTrackRenderer$EventListener;->onAudioTrackWriteError(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;)V

    return-void
.end method
