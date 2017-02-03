.class public Lorg/telegram/khalkhaloka/Answering;
.super Landroid/app/Activity;
.source "Answering.java"


# instance fields
.field ed:Landroid/widget/EditText;

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

    const v5, 0x7f0804d0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Answering;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    const v3, 0x7f04001e

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->setContentView(I)V

    const v3, 0x7f10008d

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_01:Landroid/widget/TextView;

    const v3, 0x7f10008c

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_02:Landroid/widget/TextView;

    const v3, 0x7f100094

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_03:Landroid/widget/TextView;

    const v3, 0x7f100091

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_deac:Landroid/widget/TextView;

    const v3, 0x7f100090

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->ed:Landroid/widget/EditText;

    const v3, 0x7f100093

    invoke-virtual {p0, v3}, Lorg/telegram/khalkhaloka/Answering;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Answering;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "fonts/iransansbold.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Answering;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "fonts/iransans_light.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_02:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->ed:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->ed:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getAnsweringmachineText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_deac:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getAnsweringMachine()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v4, "#E800B630"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->ed:Landroid/widget/EditText;

    new-instance v4, Lorg/telegram/khalkhaloka/Answering$1;

    invoke-direct {v4, p0}, Lorg/telegram/khalkhaloka/Answering$1;-><init>(Lorg/telegram/khalkhaloka/Answering;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lorg/telegram/khalkhaloka/Answering$2;

    invoke-direct {v3, p0}, Lorg/telegram/khalkhaloka/Answering$2;-><init>(Lorg/telegram/khalkhaloka/Answering;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void

    :cond_0
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v4, "#FFCC030A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
