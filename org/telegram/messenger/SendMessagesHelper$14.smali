.class final Lorg/telegram/messenger/SendMessagesHelper$14;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$originalPaths:Ljava/util/ArrayList;

.field final synthetic val$paths:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$originalPaths:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$mime:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$paths:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$originalPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$mime:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object v7, v2

    #calls: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v11, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$mime:Ljava/lang/String;

    iget-wide v6, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object v3, v2

    move-object v9, v2

    #calls: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v11, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_4

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$14$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$14$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
