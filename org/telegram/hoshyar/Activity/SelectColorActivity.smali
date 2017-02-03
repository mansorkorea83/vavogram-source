.class public Lorg/telegram/hoshyar/Activity/SelectColorActivity;
.super Landroid/app/Activity;
.source "SelectColorActivity.java"


# instance fields
.field gridview:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->setContentView(I)V

    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->gridview:Landroid/widget/GridView;

    iget-object v0, p0, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->gridview:Landroid/widget/GridView;

    new-instance v1, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;

    invoke-direct {v1, p0}, Lorg/telegram/hoshyar/Adapter/SelectColorAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v0, "Themes"

    const v1, 0x7f080735

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->gridview:Landroid/widget/GridView;

    new-instance v1, Lorg/telegram/hoshyar/Activity/SelectColorActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/hoshyar/Activity/SelectColorActivity$1;-><init>(Lorg/telegram/hoshyar/Activity/SelectColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
