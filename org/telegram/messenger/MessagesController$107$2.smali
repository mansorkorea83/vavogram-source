.class Lorg/telegram/messenger/MessagesController$107$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$107;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$107;

.field final synthetic val$update:Lorg/telegram/tgnet/TLRPC$Update;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$107;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$107$2;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$107$2;->val$update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$107$2;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$107$2;->val$update:Lorg/telegram/tgnet/TLRPC$Update;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJ)V

    return-void
.end method
