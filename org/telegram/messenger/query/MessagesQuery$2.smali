.class final Lorg/telegram/messenger/query/MessagesQuery$2;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessage(IIZ)Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channelId:I

.field final synthetic val$mid:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/MessagesQuery$2;->val$channelId:I

    iput p2, p0, Lorg/telegram/messenger/query/MessagesQuery$2;->val$mid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/query/MessagesQuery$2;->val$channelId:I

    iget v1, p0, Lorg/telegram/messenger/query/MessagesQuery$2;->val$mid:I

    const/4 v2, 0x0

    #calls: Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/MessagesQuery;->access$000(IIZ)Lorg/telegram/messenger/MessageObject;

    return-void
.end method
