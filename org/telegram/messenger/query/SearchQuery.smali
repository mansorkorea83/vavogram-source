.class public Lorg/telegram/messenger/query/SearchQuery;
.super Ljava/lang/Object;
.source "SearchQuery.java"


# static fields
.field public static hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
            ">;"
        }
    .end annotation
.end field

.field public static inlineBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
            ">;"
        }
    .end annotation
.end field

.field private static inlineDates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static loaded:Z

.field private static loading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    return p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(IID)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V

    return-void
.end method

.method public static cleanup()V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static deletePeer(II)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SearchQuery$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/SearchQuery$8;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static increaseInlineRaiting(I)V
    .locals 11

    const/4 v10, 0x1

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v5, p0, :cond_4

    move-object v3, v2

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeer;-><init>()V

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p0, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    div-int v5, v1, v5

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/query/SearchQuery$3;

    invoke-direct {v6}, Lorg/telegram/messenger/query/SearchQuery$3;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    sget-object v6, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-static {p0, v10, v6, v7}, Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v1, 0x3c

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static increasePeerRaiting(J)V
    .locals 4

    long-to-int v0, p0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/SearchQuery$6;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/messenger/query/SearchQuery$6;-><init>(JI)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static loadHints(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    if-nez v1, :cond_0

    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/SearchQuery$1;

    invoke-direct {v2}, Lorg/telegram/messenger/query/SearchQuery$1;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    goto :goto_0

    :cond_2
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;-><init>()V

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->hash:I

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_pm:Z

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->correspondents:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->groups:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->channels:Z

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_inline:Z

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->offset:I

    const/16 v1, 0x14

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->limit:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/SearchQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/SearchQuery$2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public static removeInline(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v3, p0, :cond_1

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$4;

    invoke-direct {v4}, Lorg/telegram/messenger/query/SearchQuery$4;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/telegram/messenger/query/SearchQuery;->deletePeer(II)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removePeer(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v3, p0, :cond_1

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {p0, v6}, Lorg/telegram/messenger/query/SearchQuery;->deletePeer(II)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$5;

    invoke-direct {v4}, Lorg/telegram/messenger/query/SearchQuery$5;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static savePeer(IID)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SearchQuery$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SearchQuery$7;-><init>(IID)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
