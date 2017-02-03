.class Lorg/telegram/messenger/MessagesController$42;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateTimerProc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$3702(Lorg/telegram/messenger/MessagesController;J)J

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v1

    #setter for: Lorg/telegram/messenger/MessagesController;->offlineSent:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3802(Lorg/telegram/messenger/MessagesController;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    #setter for: Lorg/telegram/messenger/MessagesController;->statusSettingState:I
    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->access$3902(Lorg/telegram/messenger/MessagesController;I)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    #setter for: Lorg/telegram/messenger/MessagesController;->statusRequest:I
    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->access$4002(Lorg/telegram/messenger/MessagesController;I)I

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3700(Lorg/telegram/messenger/MessagesController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3700(Lorg/telegram/messenger/MessagesController;)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    #setter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$3702(Lorg/telegram/messenger/MessagesController;J)J

    goto :goto_0
.end method
