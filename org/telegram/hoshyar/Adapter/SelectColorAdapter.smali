.class public Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectColorAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private themes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/hoshyar/Models/Theme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->LoadThemes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->themes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->getItem(I)Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/hoshyar/Models/Theme;
    .locals 1

    iget-object v0, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/hoshyar/Models/Theme;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, -0x1

    const/high16 v5, 0x41c8

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/hoshyar/Models/Theme;

    invoke-virtual {v3}, Lorg/telegram/hoshyar/Models/Theme;->getActionbarcolor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/hoshyar/Models/Theme;

    invoke-virtual {v3}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method
