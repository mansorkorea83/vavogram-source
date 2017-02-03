.class public Lorg/telegram/khalkhaloka/Recorder;
.super Landroid/app/Activity;
.source "Recorder.java"


# instance fields
.field num_voice:Ljava/lang/String;

.field r_01:Landroid/widget/RadioButton;

.field r_02:Landroid/widget/RadioButton;

.field r_03:Landroid/widget/RadioButton;

.field r_04:Landroid/widget/RadioButton;

.field r_05:Landroid/widget/RadioButton;

.field r_06:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/khalkhaloka/Recorder;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/khalkhaloka/Recorder;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Recorder;->getPackageManager()Landroid/content/pm/PackageManager;

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
    .locals 23

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Recorder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar;->hide()V

    const-string/jumbo v20, "Prefs"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/khalkhaloka/Recorder;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Recorder;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/telegram/buy/Cheker;->get_ANDROID_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0xf

    const-string/jumbo v21, "premium"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/telegram/buy/Cheker;->Decode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const v20, 0x7f040060

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->setContentView(I)V

    :goto_0
    const v20, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioGroup;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Recorder;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    const-string/jumbo v21, "fonts/iransans_light.ttf"

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Recorder;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    const-string/jumbo v21, "fonts/iransansbold.ttf"

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const v20, 0x7f1000f0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v20, 0x7f1000f3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v20, 0x7f1000f6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v20, 0x7f1000f9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v20, 0x7f1000e9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Recorder;->r_01:Landroid/widget/RadioButton;

    const v20, 0x7f1000ea

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Recorder;->r_02:Landroid/widget/RadioButton;

    const v20, 0x7f1000eb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Recorder;->r_03:Landroid/widget/RadioButton;

    const v20, 0x7f1000ec

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Recorder;->r_04:Landroid/widget/RadioButton;

    const v20, 0x7f1000ed

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Recorder;->r_05:Landroid/widget/RadioButton;

    const v20, 0x7f1000ee

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Recorder;->r_06:Landroid/widget/RadioButton;

    const v20, 0x7f10008d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v20, 0x7f10008c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v20, 0x7f1000cd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Recorder;->r_01:Landroid/widget/RadioButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Recorder;->r_02:Landroid/widget/RadioButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Recorder;->r_03:Landroid/widget/RadioButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Recorder;->r_04:Landroid/widget/RadioButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Recorder;->r_05:Landroid/widget/RadioButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Recorder;->r_06:Landroid/widget/RadioButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v20, 0x7f1000ef

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v20, 0x7f1000f2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v20, 0x7f1000f5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v20, 0x7f1000f8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    new-instance v20, Lorg/telegram/khalkhaloka/Recorder$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Recorder$1;-><init>(Lorg/telegram/khalkhaloka/Recorder;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v20, Lorg/telegram/khalkhaloka/Recorder$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Recorder$2;-><init>(Lorg/telegram/khalkhaloka/Recorder;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v20, Lorg/telegram/khalkhaloka/Recorder$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Recorder$3;-><init>(Lorg/telegram/khalkhaloka/Recorder;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v20, Lorg/telegram/khalkhaloka/Recorder$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Recorder$4;-><init>(Lorg/telegram/khalkhaloka/Recorder;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v20, Lorg/telegram/khalkhaloka/Recorder$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lorg/telegram/khalkhaloka/Recorder$5;-><init>(Lorg/telegram/khalkhaloka/Recorder;Landroid/widget/RadioGroup;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const v20, 0x7f040025

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Recorder;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getVoicech()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->num_voice:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->num_voice:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "num radio is ="

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Recorder;->num_voice:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->r_01:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->r_02:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->r_03:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->r_04:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->r_05:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Recorder;->r_06:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    return-void
.end method
