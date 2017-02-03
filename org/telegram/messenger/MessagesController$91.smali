.class Lorg/telegram/messenger/MessagesController$91;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->startShortPoll(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelId:I

.field final synthetic val$stop:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ZI)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$91;->val$stop:Z

    iput p3, p0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$91;->val$stop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJ)V

    goto :goto_0
.end method
