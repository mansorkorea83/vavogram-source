.class public Lorg/telegram/khalkhaloka/Profile_index;
.super Landroid/app/Activity;
.source "Profile_index.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Profile_index;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar;->hide()V

    const v17, 0x7f04005f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Profile_index;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string/jumbo v18, "fonts/iransansbold.ttf"

    invoke-static/range {v17 .. v18}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Profile_index;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string/jumbo v18, "fonts/iransans_light.ttf"

    invoke-static/range {v17 .. v18}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const v17, 0x7f10008d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v17, 0x7f10008c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v17, 0x7f1002f9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v17, 0x7f100094

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v17, 0x7f100092

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v17, 0x7f1000b1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v17, 0x7f100093

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const v17, 0x7f1002f7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v17, 0x7f1002f8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string/jumbo v17, "Prefs"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/khalkhaloka/Profile_index;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Profile_index;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/buy/Cheker;->get_ANDROID_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0xf

    const-string/jumbo v18, "premium"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/telegram/buy/Cheker;->Decode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v17, Lorg/telegram/khalkhaloka/Profile_index$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v5}, Lorg/telegram/khalkhaloka/Profile_index$1;-><init>(Lorg/telegram/khalkhaloka/Profile_index;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v17, Lorg/telegram/khalkhaloka/Profile_index$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Profile_index$2;-><init>(Lorg/telegram/khalkhaloka/Profile_index;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
