.class Lorg/telegram/messenger/MediaController$20;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->stopRecording(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$send:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    iput p2, p0, Lorg/telegram/messenger/MediaController$20;->val$send:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    iget v3, p0, Lorg/telegram/messenger/MediaController$20;->val$send:I

    #setter for: Lorg/telegram/messenger/MediaController;->sendAfterDone:I
    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->access$1202(Lorg/telegram/messenger/MediaController;I)I

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/messenger/MediaController$20;->val$send:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v3, 0x0

    #calls: Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->access$1300(Lorg/telegram/messenger/MediaController;I)V

    :cond_2
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v2, Lorg/telegram/messenger/MediaController$20$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$20$1;-><init>(Lorg/telegram/messenger/MediaController$20;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$20;->this$0:Lorg/telegram/messenger/MediaController;

    #getter for: Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
