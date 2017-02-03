.class Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;
.super Ljava/lang/Object;
.source "SingleSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/SingleSampleSource;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/SingleSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/SingleSampleSource;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;->this$0:Lorg/telegram/messenger/exoplayer/SingleSampleSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;->this$0:Lorg/telegram/messenger/exoplayer/SingleSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->access$100(Lorg/telegram/messenger/exoplayer/SingleSampleSource;)Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;->this$0:Lorg/telegram/messenger/exoplayer/SingleSampleSource;

    #getter for: Lorg/telegram/messenger/exoplayer/SingleSampleSource;->eventSourceId:I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/SingleSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/SingleSampleSource;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/SingleSampleSource$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/SingleSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    return-void
.end method
