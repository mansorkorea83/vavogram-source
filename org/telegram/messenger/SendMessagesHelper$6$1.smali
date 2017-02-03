.class Lorg/telegram/messenger/SendMessagesHelper$6$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$6;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    #getter for: Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    iget-object v9, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AppName"

    const v2, 0x7f080081

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "OK"

    const v2, 0x7f08035c

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    :cond_3
    const/4 v8, 0x0

    if-lez v5, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_1
    if-nez v8, :cond_5

    const-string/jumbo v8, "bot"

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/ChatActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v0, :cond_9

    const/4 v11, 0x1

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    :goto_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    if-nez v11, :cond_b

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "Notifications"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "askgame_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showOpenGameAlert(Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
