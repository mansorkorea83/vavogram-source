.class Lorg/telegram/messenger/MessagesController$50;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadMessages(JIIZIIIIZIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$first_unread:I

.field final synthetic val$isChannel:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IJIIIIIIIZIZ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$50;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$50;->val$count:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$50;->val$dialog_id:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$50;->val$max_id:I

    iput p6, p0, Lorg/telegram/messenger/MessagesController$50;->val$classGuid:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$50;->val$first_unread:I

    iput p8, p0, Lorg/telegram/messenger/MessagesController$50;->val$last_message_id:I

    iput p9, p0, Lorg/telegram/messenger/MessagesController$50;->val$unread_count:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$50;->val$last_date:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$50;->val$load_type:I

    iput-boolean p12, p0, Lorg/telegram/messenger/MessagesController$50;->val$isChannel:Z

    iput p13, p0, Lorg/telegram/messenger/MessagesController$50;->val$loadIndex:I

    iput-boolean p14, p0, Lorg/telegram/messenger/MessagesController$50;->val$queryFromServer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 19

    if-eqz p1, :cond_1

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController$50;->val$count:I

    if-le v2, v4, :cond_0

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$50;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$50;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesController$50;->val$count:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MessagesController$50;->val$max_id:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesController$50;->val$classGuid:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesController$50;->val$first_unread:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/MessagesController$50;->val$last_message_id:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesController$50;->val$unread_count:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesController$50;->val$last_date:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController$50;->val$load_type:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/messenger/MessagesController$50;->val$isChannel:Z

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$50;->val$loadIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$50;->val$queryFromServer:Z

    move/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIIIIIIZZIZ)V

    :cond_1
    return-void
.end method
