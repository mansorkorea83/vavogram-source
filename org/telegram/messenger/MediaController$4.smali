.class Lorg/telegram/messenger/MediaController$4;
.super Landroid/telephony/PhoneStateListener;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    #setter for: Lorg/telegram/messenger/MediaController;->callInProgress:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->access$2102(Lorg/telegram/messenger/MediaController;Z)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x0

    #setter for: Lorg/telegram/messenger/MediaController;->callInProgress:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$2102(Lorg/telegram/messenger/MediaController;Z)Z

    goto :goto_1

    :cond_5
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$4;->this$0:Lorg/telegram/messenger/MediaController;

    #setter for: Lorg/telegram/messenger/MediaController;->callInProgress:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->access$2102(Lorg/telegram/messenger/MediaController;Z)Z

    goto :goto_1
.end method
