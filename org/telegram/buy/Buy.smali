.class public Lorg/telegram/buy/Buy;
.super Landroid/app/Activity;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/buy/Buy$verify_buying;
    }
.end annotation


# instance fields
.field private butBuy:Landroid/widget/RelativeLayout;

.field private buyHelper:Lutil/IabHelper;

.field mGotInventoryListener:Lutil/IabHelper$QueryInventoryFinishedListener;

.field mPurchaseFinishedListener:Lutil/IabHelper$OnIabPurchaseFinishedListener;

.field txt_title_01a2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lorg/telegram/buy/Buy$3;

    invoke-direct {v0, p0}, Lorg/telegram/buy/Buy$3;-><init>(Lorg/telegram/buy/Buy;)V

    iput-object v0, p0, Lorg/telegram/buy/Buy;->mPurchaseFinishedListener:Lutil/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v0, Lorg/telegram/buy/Buy$4;

    invoke-direct {v0, p0}, Lorg/telegram/buy/Buy$4;-><init>(Lorg/telegram/buy/Buy;)V

    iput-object v0, p0, Lorg/telegram/buy/Buy;->mGotInventoryListener:Lutil/IabHelper$QueryInventoryFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/buy/Buy;)Lutil/IabHelper;
    .locals 1

    iget-object v0, p0, Lorg/telegram/buy/Buy;->buyHelper:Lutil/IabHelper;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lorg/telegram/buy/Buy;->buyHelper:Lutil/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lutil/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/buy/Buy;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->hide()V

    const v10, 0x7f04001f

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->setContentView(I)V

    invoke-virtual {p0}, Lorg/telegram/buy/Buy;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransans_medium.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/buy/Buy;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransans_medium.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v10, 0x7f10009b

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    const v10, 0x7f100095

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v10, 0x7f10008f

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v10, 0x7f100096

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x7f100097

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v10, 0x7f100098

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x7f100099

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f10009a

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v10, 0x7f10009c

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;

    const v10, 0x7f100092

    invoke-virtual {p0, v10}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v10, p0, Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v10, p0, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    const v11, 0x7f0804db

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    new-instance v10, Lutil/IabHelper;

    const-string/jumbo v11, "MIHNMA0GCSqGSIb3DQEBAQUAA4G7ADCBtwKBrwDLRZy+s8mglU2/AjyYtywcUpfC8KasGlqHmd1KkEttUpqBRaMXigIyuND8P8QKxJ1q6hKLgpmCXCMp9ZliFb9E9TCUM8t6kS7eJ7hmAhVGiNJghYr/uxb5Xl6oltH/9tm+Z2gECKTanrjMxBqsOR0MV5/ppS96IZJCeHwRSdxmTonp5Zf54i0oqd6gUEr/hNeXh77Sc5vefBGlamCMobOdwOvfL9tOBpRWqWKa3xECAwEAAQ=="

    invoke-direct {v10, p0, v11}, Lutil/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v10, p0, Lorg/telegram/buy/Buy;->buyHelper:Lutil/IabHelper;

    iget-object v10, p0, Lorg/telegram/buy/Buy;->buyHelper:Lutil/IabHelper;

    new-instance v11, Lorg/telegram/buy/Buy$1;

    invoke-direct {v11, p0}, Lorg/telegram/buy/Buy$1;-><init>(Lorg/telegram/buy/Buy;)V

    invoke-virtual {v10, v11}, Lutil/IabHelper;->startSetup(Lutil/IabHelper$OnIabSetupFinishedListener;)V

    iget-object v10, p0, Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;

    new-instance v11, Lorg/telegram/buy/Buy$2;

    invoke-direct {v11, p0, v2}, Lorg/telegram/buy/Buy$2;-><init>(Lorg/telegram/buy/Buy;Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lorg/telegram/buy/Buy;->buyHelper:Lutil/IabHelper;

    invoke-virtual {v0}, Lutil/IabHelper;->dispose()V

    return-void
.end method
