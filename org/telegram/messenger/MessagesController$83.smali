.class Lorg/telegram/messenger/MessagesController$83;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->generateUpdateMessage()V
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

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$83;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    sget-object v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v2, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_0
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appChangelog;

    if-eqz v2, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_appChangelog;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appChangelog;->text:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v2, "update"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$83;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2, v1, v4, v4, v3}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    :cond_1
    return-void
.end method
