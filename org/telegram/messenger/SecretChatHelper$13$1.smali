.class Lorg/telegram/messenger/SecretChatHelper$13$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$13;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$13;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$13;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    #getter for: Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v2, v2, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$13$1$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SecretChatHelper$13$1$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$13$1;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
