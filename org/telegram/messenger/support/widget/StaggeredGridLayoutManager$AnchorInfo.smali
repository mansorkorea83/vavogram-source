.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V

    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method assignCoordinateFromPadding(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0
.end method

.method reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    return-void
.end method
