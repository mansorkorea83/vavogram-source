.class Lorg/telegram/messenger/MessagesStorage$6$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$6;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$6;Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$6$1;->this$1:Lorg/telegram/messenger/MessagesStorage$6;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$6$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$6$1;->val$taskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$6$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$6$1;->val$taskId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    return-void
.end method
