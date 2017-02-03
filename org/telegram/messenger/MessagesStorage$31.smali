.class Lorg/telegram/messenger/MessagesStorage$31;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$ifExist:Z

.field final synthetic val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$ifExist:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$ifExist:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SELECT uid FROM chat_settings_v2 WHERE uid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v14

    const-string/jumbo v15, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual {v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v14}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v14

    invoke-direct {v3, v14}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v14, v3}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SELECT date, pts, last_mid, inbox_max, outbox_max FROM dialogs WHERE did = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    if-gt v8, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    sub-int v7, v14, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    if-ge v7, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput v7, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v10

    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v14

    const-string/jumbo v15, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    neg-int v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x4

    invoke-virtual {v13, v14, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$31;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x7

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v14, 0x9

    invoke-virtual {v13, v14, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v14, "tmessages"

    invoke-static {v14, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
