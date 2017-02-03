.class Lorg/telegram/messenger/MessagesStorage$70;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$onlyStatus:Z

.field final synthetic val$users:Ljava/util/ArrayList;

.field final synthetic val$withTransaction:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$70;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$70;->val$users:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$70;->val$onlyStatus:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$70;->val$withTransaction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$70;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$70;->val$users:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$70;->val$onlyStatus:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$70;->val$withTransaction:Z

    #calls: Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$1500(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V

    return-void
.end method
