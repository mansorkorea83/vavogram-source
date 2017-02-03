.class Lorg/telegram/messenger/NotificationsController$4;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->setLastOnlineFromOtherDevice(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$4;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput p2, p0, Lorg/telegram/messenger/NotificationsController$4;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "tmessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set last online from other device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/NotificationsController$4;->val$time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$4;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController$4;->val$time:I

    #setter for: Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$1402(Lorg/telegram/messenger/NotificationsController;I)I

    return-void
.end method
