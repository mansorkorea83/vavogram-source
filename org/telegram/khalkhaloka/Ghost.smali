.class public Lorg/telegram/khalkhaloka/Ghost;
.super Landroid/app/Activity;
.source "Ghost.java"


# instance fields
.field ly_02:Landroid/widget/RelativeLayout;

.field txt_01:Landroid/widget/TextView;

.field txt_02:Landroid/widget/TextView;

.field txt_03:Landroid/widget/TextView;

.field txt_deac:Landroid/widget/TextView;

.field txt_state:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f0804fc

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Ghost;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    const v4, 0x7f04003b

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->setContentView(I)V

    const v4, 0x7f100093

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f10008e

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getNotifi()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    new-instance v4, Lorg/telegram/khalkhaloka/Ghost$1;

    invoke-direct {v4, p0}, Lorg/telegram/khalkhaloka/Ghost$1;-><init>(Lorg/telegram/khalkhaloka/Ghost;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f100092

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->ly_02:Landroid/widget/RelativeLayout;

    const v4, 0x7f10008d

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_01:Landroid/widget/TextView;

    const v4, 0x7f10008c

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_02:Landroid/widget/TextView;

    const v4, 0x7f100094

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    const v4, 0x7f100091

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_deac:Landroid/widget/TextView;

    const v4, 0x7f100090

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Ghost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Ghost;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/iransansbold.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Ghost;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/iransans_light.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_01:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_02:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_deac:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v5, "\u0641\u0639\u0627\u0644"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v5, "#E800B630"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v4, Lorg/telegram/khalkhaloka/Ghost$2;

    invoke-direct {v4, p0}, Lorg/telegram/khalkhaloka/Ghost$2;-><init>(Lorg/telegram/khalkhaloka/Ghost;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    const v5, 0x7f0804d0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v5, "#FFCC030A"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    const v1, 0x7f0804fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    const v1, 0x7f0804d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
