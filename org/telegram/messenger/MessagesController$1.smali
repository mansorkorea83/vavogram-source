.class Lorg/telegram/messenger/MessagesController$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$1;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$TL_dialog;)I
    .locals 6

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v3, v4, :cond_0

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    :goto_0
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v3, v4, :cond_1

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    :goto_1
    if-ge v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_0

    :cond_1
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    goto :goto_1

    :cond_2
    if-le v0, v1, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method
