.class public Lorg/telegram/messenger/PopupReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PopupReplyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->forceShowPopupForReply()V

    return-void
.end method
