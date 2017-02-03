.class Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

.field final synthetic val$rawResponse:[B


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;[B)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;

    #getter for: Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;->access$400(Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;)Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EventListener;->onMediaPlaylistLoadCompleted([B)V

    return-void
.end method
