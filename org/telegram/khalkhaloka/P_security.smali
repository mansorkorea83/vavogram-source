.class public Lorg/telegram/khalkhaloka/P_security;
.super Landroid/app/Activity;
.source "P_security.java"


# instance fields
.field txt_03:Landroid/widget/EditText;

.field txt_04:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/P_security;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->hide()V

    const v6, 0x7f040065

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->setContentView(I)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/P_security;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "fonts/iransansbold.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/P_security;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "fonts/iransans_light.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const v6, 0x7f10010a

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f10010c

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f100119

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lorg/telegram/khalkhaloka/P_security;->txt_03:Landroid/widget/EditText;

    const v6, 0x7f1002fa

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lorg/telegram/khalkhaloka/P_security;->txt_04:Landroid/widget/EditText;

    const v6, 0x7f100093

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v6, 0x7f100092

    invoke-virtual {p0, v6}, Lorg/telegram/khalkhaloka/P_security;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lorg/telegram/khalkhaloka/P_security;->txt_03:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lorg/telegram/khalkhaloka/P_security;->txt_04:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v6, Lorg/telegram/khalkhaloka/P_security$1;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/P_security$1;-><init>(Lorg/telegram/khalkhaloka/P_security;)V

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
