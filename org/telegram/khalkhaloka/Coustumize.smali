.class public Lorg/telegram/khalkhaloka/Coustumize;
.super Landroid/app/Activity;
.source "Coustumize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/telegram/khalkhaloka/Coustumize;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Coustumize;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Coustumize;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActionBar;->hide()V

    const v13, 0x7f040021

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->setContentView(I)V

    const v13, 0x7f100092

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000b1

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000ae

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000b4

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000ad

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000b2

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000b5

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v13, 0x7f1000af

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Coustumize;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string/jumbo v14, "fonts/iransansbold.ttf"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const v13, 0x7f100094

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v13, 0x7f1000b3

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v13, 0x7f1000b0

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v13, 0x7f1000b6

    invoke-virtual {p0, v13}, Lorg/telegram/khalkhaloka/Coustumize;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v13, Lorg/telegram/khalkhaloka/Coustumize$1;

    invoke-direct {v13, p0}, Lorg/telegram/khalkhaloka/Coustumize$1;-><init>(Lorg/telegram/khalkhaloka/Coustumize;)V

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lorg/telegram/khalkhaloka/Coustumize$2;

    invoke-direct {v13, p0}, Lorg/telegram/khalkhaloka/Coustumize$2;-><init>(Lorg/telegram/khalkhaloka/Coustumize;)V

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lorg/telegram/khalkhaloka/Coustumize$3;

    invoke-direct {v13, p0}, Lorg/telegram/khalkhaloka/Coustumize$3;-><init>(Lorg/telegram/khalkhaloka/Coustumize;)V

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lorg/telegram/khalkhaloka/Coustumize$4;

    invoke-direct {v13, p0}, Lorg/telegram/khalkhaloka/Coustumize$4;-><init>(Lorg/telegram/khalkhaloka/Coustumize;)V

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
