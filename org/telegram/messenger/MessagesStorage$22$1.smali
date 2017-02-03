.class Lorg/telegram/messenger/MessagesStorage$22$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$22;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$22;Lorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->this$1:Lorg/telegram/messenger/MessagesStorage$22;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->val$res:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->this$1:Lorg/telegram/messenger/MessagesStorage$22;

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->this$1:Lorg/telegram/messenger/MessagesStorage$22;

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$offset:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->this$1:Lorg/telegram/messenger/MessagesStorage$22;

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$count:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->this$1:Lorg/telegram/messenger/MessagesStorage$22;

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$max_id:J

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$22$1;->this$1:Lorg/telegram/messenger/MessagesStorage$22;

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$classGuid:I

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V

    return-void
.end method
