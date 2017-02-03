.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$2;
.super Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #calls: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I
    invoke-static {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$400(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    #getter for: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$500(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method
