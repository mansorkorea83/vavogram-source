.class Lorg/telegram/messenger/query/DraftQuery$3$1;
.super Ljava/lang/Object;
.source "DraftQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/DraftQuery$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/DraftQuery$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/DraftQuery$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/DraftQuery$3$1;->this$0:Lorg/telegram/messenger/query/DraftQuery$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    if-nez p2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/query/DraftQuery$3$1;->this$0:Lorg/telegram/messenger/query/DraftQuery$3;

    iget-wide v2, v1, Lorg/telegram/messenger/query/DraftQuery$3;->val$did:J

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    #calls: Lorg/telegram/messenger/query/DraftQuery;->saveDraftReplyMessage(JLorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/query/DraftQuery;->access$100(JLorg/telegram/tgnet/TLRPC$Message;)V

    :cond_0
    return-void
.end method
