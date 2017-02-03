.class final Lorg/telegram/tgnet/ConnectionsManager$3;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager;->onUnparsedMessageReceived(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    #getter for: Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$100(Lorg/telegram/tgnet/ConnectionsManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "release wakelock"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    #getter for: Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->access$100(Lorg/telegram/tgnet/ConnectionsManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
