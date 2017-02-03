.class public abstract Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;
.super Lorg/telegram/messenger/support/util/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/telegram/messenger/support/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList$Callback;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
