.class Lorg/telegram/messenger/MessagesController$77$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$77;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$77;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$77;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$77$2;->this$1:Lorg/telegram/messenger/MessagesController$77;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$77$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$77$2;->this$1:Lorg/telegram/messenger/MessagesController$77;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$77;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$77$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$77$2;->this$1:Lorg/telegram/messenger/MessagesController$77;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$77;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$77$2;->this$1:Lorg/telegram/messenger/MessagesController$77;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController$77;->val$isChannel:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$77$2;->this$1:Lorg/telegram/messenger/MessagesController$77;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController$77;->val$isMegagroup:Z

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$77$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method
