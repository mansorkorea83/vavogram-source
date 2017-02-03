.class Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->notifyAvailableRangeChanged(Lorg/telegram/messenger/exoplayer/TimeRange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;

.field final synthetic val$seekRange:Lorg/telegram/messenger/exoplayer/TimeRange;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;Lorg/telegram/messenger/exoplayer/TimeRange;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;->this$0:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;->val$seekRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;->this$0:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;

    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->access$400(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;)Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;->this$0:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;

    #getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventSourceId:I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->access$300(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;->val$seekRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;->onAvailableRangeChanged(ILorg/telegram/messenger/exoplayer/TimeRange;)V

    return-void
.end method
