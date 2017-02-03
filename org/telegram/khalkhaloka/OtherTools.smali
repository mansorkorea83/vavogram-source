.class public Lorg/telegram/khalkhaloka/OtherTools;
.super Landroid/app/Activity;
.source "OtherTools.java"


# instance fields
.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field count_login:I

.field prof:Lorg/telegram/khalkhaloka/Khalkhaloka_textview;

.field private writeButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/khalkhaloka/OtherTools;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/khalkhaloka/OtherTools;->count_login:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 39
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/OtherTools;->getActionBar()Landroid/app/ActionBar;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/ActionBar;->hide()V

    const v36, 0x7f040056

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->setContentView(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getCustomTheme()I

    move-result v23

    const v36, 0x7f100144

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v36, 0x7f100145

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$1;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$1;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/OtherTools;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v36

    const-string/jumbo v37, "fonts/iransansbold.ttf"

    invoke-static/range {v36 .. v37}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    const v36, 0x7f1001d1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001d0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001d2

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001da

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001db

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001e3

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001e2

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001e4

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001f1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001f3

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001ec

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001eb

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    const v36, 0x7f1001df

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v36, 0x7f080507

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001f5

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    const v36, 0x7f0804e7

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001f7

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    const v36, 0x7f0804cf

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001ea

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v36, 0x7f0804d8

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001e8

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const v36, 0x7f080531

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001e6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    const v36, 0x7f080528

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001e1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    const v36, 0x7f08052a

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001d8

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    const v36, 0x7f080518

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001d4

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    const v36, 0x7f08053f

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001d6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const v36, 0x7f08050e

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001f0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const v36, 0x7f080532

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v36, 0x7f1001ee

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    const v36, 0x7f0804fb

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string/jumbo v36, "Prefs"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/telegram/khalkhaloka/OtherTools;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/OtherTools;->getBaseContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lorg/telegram/buy/Cheker;->get_ANDROID_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const/16 v36, 0xf

    const-string/jumbo v37, "premium"

    const-string/jumbo v38, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lorg/telegram/buy/Cheker;->Decode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$2;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$2;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$3;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$3;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$4;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v13}, Lorg/telegram/khalkhaloka/OtherTools$4;-><init>(Lorg/telegram/khalkhaloka/OtherTools;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$5;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$5;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$6;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$6;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$7;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v13}, Lorg/telegram/khalkhaloka/OtherTools$7;-><init>(Lorg/telegram/khalkhaloka/OtherTools;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$8;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$9;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$9;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$10;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$10;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$11;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$11;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$12;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$12;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Lorg/telegram/khalkhaloka/OtherTools$13;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/OtherTools$13;-><init>(Lorg/telegram/khalkhaloka/OtherTools;)V

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getLoginCount()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lorg/telegram/hoshyar/Setting/Setting;->setLoginCount(Ljava/lang/String;)V

    move v10, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/khalkhaloka/OtherTools;->count_login:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/khalkhaloka/OtherTools;->count_login:I

    return-void
.end method
