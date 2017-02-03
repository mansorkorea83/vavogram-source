.class Lorg/telegram/messenger/exoplayer/ExoPlayerImpl$1;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;-><init>(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl$1;->this$0:Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl$1;->this$0:Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;->handleEvent(Landroid/os/Message;)V

    return-void
.end method
