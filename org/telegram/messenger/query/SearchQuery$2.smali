.class final Lorg/telegram/messenger/query/SearchQuery$2;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->loadHints(Z)V
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
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/query/SearchQuery$2$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/SearchQuery$2$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$2;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
