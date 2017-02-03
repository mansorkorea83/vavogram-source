.class Lorg/telegram/messenger/MessagesController$52$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$52;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$52;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$52;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget-wide v4, v2, Lorg/telegram/messenger/MessagesController$52;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v6, v2, Lorg/telegram/messenger/MessagesController$52;->val$count:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$52;->val$load_type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$52;->val$queryFromServer:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v7, v2, Lorg/telegram/messenger/MessagesController$52;->val$first_unread:I

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v10, v2, Lorg/telegram/messenger/MessagesController$52;->val$classGuid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v11, v2, Lorg/telegram/messenger/MessagesController$52;->val$load_type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v12, v2, Lorg/telegram/messenger/MessagesController$52;->val$last_message_id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget-boolean v13, v2, Lorg/telegram/messenger/MessagesController$52;->val$isChannel:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v14, v2, Lorg/telegram/messenger/MessagesController$52;->val$loadIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v15, v2, Lorg/telegram/messenger/MessagesController$52;->val$first_unread:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v0, v2, Lorg/telegram/messenger/MessagesController$52;->val$unread_count:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v0, v2, Lorg/telegram/messenger/MessagesController$52;->val$last_date:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget-boolean v0, v2, Lorg/telegram/messenger/MessagesController$52;->val$queryFromServer:Z

    move/from16 v18, v0

    invoke-virtual/range {v3 .. v18}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIZIIIIZIIIIZ)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52$1;->this$1:Lorg/telegram/messenger/MessagesController$52;

    iget v7, v2, Lorg/telegram/messenger/MessagesController$52;->val$max_id:I

    goto :goto_0
.end method
