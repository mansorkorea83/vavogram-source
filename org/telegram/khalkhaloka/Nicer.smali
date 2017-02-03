.class public Lorg/telegram/khalkhaloka/Nicer;
.super Landroid/app/Activity;
.source "Nicer.java"


# instance fields
.field ch_01:Landroid/widget/CheckBox;

.field ch_02:Landroid/widget/CheckBox;

.field ch_03:Landroid/widget/CheckBox;

.field ch_04:Landroid/widget/CheckBox;

.field ch_05:Landroid/widget/CheckBox;

.field ch_06:Landroid/widget/CheckBox;

.field ch_07:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/khalkhaloka/Nicer;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/khalkhaloka/Nicer;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Nicer;->getPackageManager()Landroid/content/pm/PackageManager;

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
    .locals 21

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Nicer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActionBar;->hide()V

    const-string/jumbo v18, "Prefs"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/khalkhaloka/Nicer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Nicer;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/buy/Cheker;->get_ANDROID_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0xf

    const-string/jumbo v19, "premium"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/telegram/buy/Cheker;->Decode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const v18, 0x7f04004d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Nicer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string/jumbo v19, "fonts/iransansbold.ttf"

    invoke-static/range {v18 .. v19}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Nicer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string/jumbo v19, "fonts/iransans_light.ttf"

    invoke-static/range {v18 .. v19}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const v18, 0x7f1002da

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v18, 0x7f1002da

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v18, 0x7f1000d2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v18, 0x7f1000d7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v18, 0x7f1000dc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v18, 0x7f1000e1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v18, 0x7f1000e6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v18, 0x7f1002db

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v18, 0x7f10008e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    const v18, 0x7f1000d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    const v18, 0x7f1000d6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    const v18, 0x7f1000db

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    const v18, 0x7f1000e0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    const v18, 0x7f1000e5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    const v18, 0x7f1002dc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    const v18, 0x7f1000c7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getBooleanCharacter()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$1;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v18, 0x7f1002d8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Nicer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getSpaceCharacter()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/khalkhaloka/Nicer$2;-><init>(Lorg/telegram/khalkhaloka/Nicer;Landroid/widget/EditText;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$3;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$4;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$5;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$6;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$7;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v18, Lorg/telegram/khalkhaloka/Nicer$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$8;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$9;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$10;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$11;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$12;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$13;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$14;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/khalkhaloka/Nicer$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Nicer$15;-><init>(Lorg/telegram/khalkhaloka/Nicer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getWrite()I

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_07:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method
