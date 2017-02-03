.class Lorg/telegram/messenger/MessagesController$31;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelId:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$31;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$31;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$31;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    iget v4, p0, Lorg/telegram/messenger/MessagesController$31;->val$channelId:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    :cond_0
    return-void
.end method
