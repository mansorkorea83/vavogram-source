.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIIILorg/telegram/messenger/support/widget/DefaultItemAnimator$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$MoveInfo;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
