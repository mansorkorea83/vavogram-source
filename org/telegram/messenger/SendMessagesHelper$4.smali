.class Lorg/telegram/messenger/SendMessagesHelper$4;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$isMegagroupFinal:Z

.field final synthetic val$messagesByRandomIdsFinal:Ljava/util/HashMap;

.field final synthetic val$newMsgArr:Ljava/util/ArrayList;

.field final synthetic val$newMsgObjArr:Ljava/util/ArrayList;

.field final synthetic val$peer:J

.field final synthetic val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;JZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 22

    if-nez p2, :cond_9

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v17, p1

    check-cast v17, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_1

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v4, :cond_0

    move-object/from16 v16, v15

    check-cast v16, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    if-nez v18, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_3

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_5

    :cond_3
    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_6

    move-object v4, v15

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, -0x1

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move/from16 v19, v0

    const/16 v20, -0x1

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    :cond_4
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v6, :cond_8

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move-object v4, v15

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, v15, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move/from16 v19, v0

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    if-eqz v4, :cond_4

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x8000

    or-int/2addr v4, v5

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const/4 v4, -0x1

    if-eq v11, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v5, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    #calls: Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    invoke-static {v4, v12, v9, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$4$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_9
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$4$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_a
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lorg/telegram/messenger/SendMessagesHelper$4$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method
