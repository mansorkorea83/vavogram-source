.class public Lorg/telegram/hoshyar/Helper/GhostPorotocol;
.super Ljava/lang/Object;
.source "GhostPorotocol.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toggleGhostPortocol()V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/hoshyar/Helper/GhostPorotocol;->trun(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trun(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setGhostMode(Ljava/lang/Boolean;)V

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getNotifi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/hoshyar/Helper/NotiFicationMaker;->createNotification()V

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->reRunUpdateTimerProc()V

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/hoshyar/Helper/NotiFicationMaker;->cancelNotification()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/hoshyar/Helper/NotiFicationMaker;->cancelNotification()V

    goto :goto_0
.end method

.method public static update()V
    .locals 1

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Helper/GhostPorotocol;->trun(Z)V

    return-void
.end method
