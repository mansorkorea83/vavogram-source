.class public Lorg/telegram/khalkhaloka/Security;
.super Landroid/app/Activity;
.source "Security.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Security;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->hide()V

    const v10, 0x7f040061

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->setContentView(I)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Security;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransansbold.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Security;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransans_light.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const v10, 0x7f10008d

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v10, 0x7f10008c

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x7f100094

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f1002f9

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f100092

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v10, 0x7f1000b1

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v10, 0x7f100093

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v10, 0x7f1002f8

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/Security;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v10, Lorg/telegram/khalkhaloka/Security$1;

    invoke-direct {v10, p0}, Lorg/telegram/khalkhaloka/Security$1;-><init>(Lorg/telegram/khalkhaloka/Security;)V

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lorg/telegram/khalkhaloka/Security$2;

    invoke-direct {v10, p0}, Lorg/telegram/khalkhaloka/Security$2;-><init>(Lorg/telegram/khalkhaloka/Security;)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
