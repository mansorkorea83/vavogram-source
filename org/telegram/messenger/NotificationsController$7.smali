.class Lorg/telegram/messenger/NotificationsController$7;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$dialog_id:J

.field final synthetic val$inbox:Landroid/util/SparseArray;

.field final synthetic val$isPopup:Z

.field final synthetic val$max_date:I

.field final synthetic val$max_id:I

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroid/util/SparseArray;JIIZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$7;->val$inbox:Landroid/util/SparseArray;

    iput-wide p4, p0, Lorg/telegram/messenger/NotificationsController$7;->val$dialog_id:J

    iput p6, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_id:I

    iput p7, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_date:I

    iput-boolean p8, p0, Lorg/telegram/messenger/NotificationsController$7;->val$isPopup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/16 v14, 0x20

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_0
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$inbox:Landroid/util/SparseArray;

    if-eqz v10, :cond_7

    const/4 v1, 0x0

    :goto_1
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    :goto_2
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_5

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    int-to-long v12, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    long-to-int v11, v4

    if-gt v10, v11, :cond_3

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #calls: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v10, v3}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    :cond_0
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v10

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_2

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    shl-long/2addr v10, v14

    or-long/2addr v6, v10

    :cond_2
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-wide v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$dialog_id:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_13

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_id:I

    if-nez v10, :cond_8

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_date:I

    if-eqz v10, :cond_13

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_12

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/messenger/NotificationsController$7;->val$dialog_id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    const/4 v9, 0x0

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_date:I

    if-eqz v10, :cond_e

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_date:I

    if-gt v10, v11, :cond_9

    const/4 v9, 0x1

    :cond_9
    :goto_4
    if-eqz v9, :cond_d

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #calls: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v10, v3}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    :cond_a
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v10

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_c

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    shl-long/2addr v10, v14

    or-long/2addr v6, v10

    :cond_c
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_e
    iget-boolean v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$isPopup:Z

    if-nez v10, :cond_10

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_id:I

    if-le v10, v11, :cond_f

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_id:I

    if-gez v10, :cond_9

    :cond_f
    const/4 v9, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_id:I

    if-eq v10, v11, :cond_11

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$max_id:I

    if-gez v10, :cond_9

    :cond_11
    const/4 v9, 0x1

    goto :goto_4

    :cond_12
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    #getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :cond_13
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v8, v10, :cond_14

    new-instance v10, Lorg/telegram/messenger/NotificationsController$7$1;

    invoke-direct {v10, p0}, Lorg/telegram/messenger/NotificationsController$7$1;-><init>(Lorg/telegram/messenger/NotificationsController$7;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method
