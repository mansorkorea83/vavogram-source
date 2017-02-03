.class Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->access$100(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;->this$0:Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->eventSourceId:I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    return-void
.end method
