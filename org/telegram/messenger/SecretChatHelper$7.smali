.class Lorg/telegram/messenger/SecretChatHelper$7;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field final synthetic val$endSeq:I

.field final synthetic val$startSeq:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$7;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput p2, p0, Lorg/telegram/messenger/SecretChatHelper$7;->val$startSeq:I

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput p4, p0, Lorg/telegram/messenger/SecretChatHelper$7;->val$endSeq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$startSeq:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v4, v10, :cond_0

    rem-int/lit8 v4, v29, 0x2

    if-nez v4, :cond_0

    add-int/lit8 v29, v29, 0x1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "SELECT uid FROM requested_holes WHERE uid = %d AND ((seq_out_start >= %d AND %d <= seq_out_end) OR (seq_out_start >= %d AND %d <= seq_out_end))"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$endSeq:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$endSeq:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v25

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v25, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v10, v4

    const/16 v4, 0x20

    shl-long v20, v10, v4

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v29

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$endSeq:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x2

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "SELECT m.data, r.random_id, s.seq_in, s.seq_out, m.ttl, s.mid FROM messages_seq as s LEFT JOIN randoms as r ON r.mid = s.mid LEFT JOIN messages as m ON m.mid = s.mid WHERE m.uid = %d AND m.out = 1 AND s.seq_out >= %d AND s.seq_out <= %d ORDER BY seq_out ASC"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$endSeq:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v18

    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_3

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    :cond_3
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v19

    if-eqz v19, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v10}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move-object/from16 v0, v26

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v0, v20

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-object/from16 v0, v26

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    move-object/from16 v0, v26

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v22

    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper$7;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    #calls: Lorg/telegram/messenger/SecretChatHelper;->createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->access$200(Lorg/telegram/messenger/SecretChatHelper;IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v26

    goto :goto_3

    :cond_5
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SecretChatHelper$7;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v11

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v16, v0

    #calls: Lorg/telegram/messenger/SecretChatHelper;->createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/SecretChatHelper;->access$200(Lorg/telegram/messenger/SecretChatHelper;IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_7
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$7$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/SecretChatHelper$7$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$7;)V

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$7$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/SecretChatHelper$7$2;-><init>(Lorg/telegram/messenger/SecretChatHelper$7;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v10, v11, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "REPLACE INTO requested_holes VALUES(%d, %d, %d)"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/SecretChatHelper$7;->val$endSeq:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
