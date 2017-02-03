.class Lorg/telegram/messenger/MessagesController$48$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$48;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$48;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$48;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$48$1;->this$1:Lorg/telegram/messenger/MessagesController$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$48$1;->this$1:Lorg/telegram/messenger/MessagesController$48;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$48;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$48$1;->this$1:Lorg/telegram/messenger/MessagesController$48;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$48;->val$action:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$48$1;->this$1:Lorg/telegram/messenger/MessagesController$48;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$48;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
