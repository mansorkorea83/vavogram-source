.class Lorg/telegram/messenger/MessagesStorage$61$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$61;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$61;

.field final synthetic val$objects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$61;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$61$1;->this$1:Lorg/telegram/messenger/MessagesStorage$61;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$61$1;->val$objects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$61$1;->this$1:Lorg/telegram/messenger/MessagesStorage$61;

    iget v1, v1, Lorg/telegram/messenger/MessagesStorage$61;->val$type:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$61$1;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->processDownloadObjects(ILjava/util/ArrayList;)V

    return-void
.end method
