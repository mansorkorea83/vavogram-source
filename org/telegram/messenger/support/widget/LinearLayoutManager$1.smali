.class Lorg/telegram/messenger/support/widget/LinearLayoutManager$1;
.super Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/LinearLayoutManager;->smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
