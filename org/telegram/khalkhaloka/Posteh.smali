.class public Lorg/telegram/khalkhaloka/Posteh;
.super Landroid/app/Activity;
.source "Posteh.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/khalkhaloka/Posteh;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/khalkhaloka/Posteh;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Posteh;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Posteh;->getActionBar()Landroid/app/ActionBar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/ActionBar;->hide()V

    const v25, 0x7f040069

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->setContentView(I)V

    const-string/jumbo v25, "Prefs"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/khalkhaloka/Posteh;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Posteh;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/buy/Cheker;->get_ANDROID_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0xf

    const-string/jumbo v26, "premium"

    const-string/jumbo v27, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/telegram/buy/Cheker;->Decode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Posteh;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v25

    const-string/jumbo v26, "fonts/iransansbold.ttf"

    invoke-static/range {v25 .. v26}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    const v25, 0x7f1002fe

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v25, 0x7f100092

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v25, 0x7f1000b1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const v25, 0x7f1000ae

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    const v25, 0x7f1000b4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v25, 0x7f100301

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v25, 0x7f10008d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    const v25, 0x7f10008c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v25, 0x7f1000cd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const v25, 0x7f100303

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f100302

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v25, 0x7f1000d7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v25, 0x7f1000e1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v25, 0x7f100300

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    const v25, 0x7f100093

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    const v25, 0x7f100110

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    const v25, 0x7f100112

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    const v25, 0x7f100114

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Posteh;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$1;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$2;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$3;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$4;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$5;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$6;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$7;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$8;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$9;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v25, Lorg/telegram/khalkhaloka/Posteh$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Posteh$10;-><init>(Lorg/telegram/khalkhaloka/Posteh;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
