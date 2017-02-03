.class Lorg/telegram/messenger/MessagesStorage$20$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$20;

.field final synthetic val$mids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$20;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$20$1;->this$1:Lorg/telegram/messenger/MessagesStorage$20;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$20$1;->val$mids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$20$1;->val$mids:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$20$1;->this$1:Lorg/telegram/messenger/MessagesStorage$20;

    iget v2, v2, Lorg/telegram/messenger/MessagesStorage$20;->val$channelId:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V

    return-void
.end method
