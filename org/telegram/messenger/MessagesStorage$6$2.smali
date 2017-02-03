.class Lorg/telegram/messenger/MessagesStorage$6$2;
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

.field final synthetic val$channelId:I

.field final synthetic val$newDialogType:I

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$6;IIJ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->this$1:Lorg/telegram/messenger/MessagesStorage$6;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->val$newDialogType:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->val$taskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->val$channelId:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->val$newDialogType:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$6$2;->val$taskId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJ)V

    return-void
.end method
