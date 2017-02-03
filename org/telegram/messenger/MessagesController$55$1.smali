.class Lorg/telegram/messenger/MessagesController$55$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$55;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$55;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$55;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$55;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$55;->val$resetEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$55;->val$count:I

    invoke-virtual {v0, v3, v1, v3}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    return-void
.end method
