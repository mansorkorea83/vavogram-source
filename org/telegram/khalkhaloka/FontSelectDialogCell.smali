.class public Lorg/telegram/khalkhaloka/FontSelectDialogCell;
.super Landroid/app/Activity;
.source "FontSelectDialogCell.java"


# instance fields
.field num_font:Ljava/lang/String;

.field r_01:Landroid/widget/RadioButton;

.field r_02:Landroid/widget/RadioButton;

.field r_03:Landroid/widget/RadioButton;

.field r_04:Landroid/widget/RadioButton;

.field r_05:Landroid/widget/RadioButton;

.field r_06:Landroid/widget/RadioButton;

.field r_07:Landroid/widget/RadioButton;

.field r_08:Landroid/widget/RadioButton;

.field r_09:Landroid/widget/RadioButton;

.field r_10:Landroid/widget/RadioButton;

.field txt_01:Landroid/widget/TextView;

.field txt_02:Landroid/widget/TextView;

.field txt_03:Landroid/widget/TextView;

.field txt_04:Landroid/widget/TextView;

.field txt_05:Landroid/widget/TextView;

.field txt_06:Landroid/widget/TextView;

.field txt_07:Landroid/widget/TextView;

.field txt_08:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 10

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x1e240

    const/high16 v4, 0x1000

    invoke-static {p0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string/jumbo v4, "alarm"

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->finish()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->hide()V

    const v10, 0x7f040038

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->setContentView(I)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransansbold.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/hama.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/dastnevis.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/byekan.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/afsaneh.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransans_light.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransans_medium.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/morvarid.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/ritalic.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const v10, 0x7f10011c

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    const v10, 0x7f10011d

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_01:Landroid/widget/RadioButton;

    const v10, 0x7f1000e9

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_02:Landroid/widget/RadioButton;

    const v10, 0x7f1000ea

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_03:Landroid/widget/RadioButton;

    const v10, 0x7f1000eb

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_04:Landroid/widget/RadioButton;

    const v10, 0x7f1000ec

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_05:Landroid/widget/RadioButton;

    const v10, 0x7f1000ed

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_06:Landroid/widget/RadioButton;

    const v10, 0x7f1000ee

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_07:Landroid/widget/RadioButton;

    const v10, 0x7f10011e

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_08:Landroid/widget/RadioButton;

    const v10, 0x7f10011f

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_09:Landroid/widget/RadioButton;

    const v10, 0x7f100120

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_10:Landroid/widget/RadioButton;

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_02:Landroid/widget/RadioButton;

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_03:Landroid/widget/RadioButton;

    invoke-virtual {v10, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_04:Landroid/widget/RadioButton;

    invoke-virtual {v10, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_05:Landroid/widget/RadioButton;

    invoke-virtual {v10, v3}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_06:Landroid/widget/RadioButton;

    invoke-virtual {v10, v4}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_07:Landroid/widget/RadioButton;

    invoke-virtual {v10, v5}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_08:Landroid/widget/RadioButton;

    invoke-virtual {v10, v6}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_09:Landroid/widget/RadioButton;

    invoke-virtual {v10, v7}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_10:Landroid/widget/RadioButton;

    invoke-virtual {v10, v8}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v10, Lorg/telegram/khalkhaloka/FontSelectDialogCell$1;

    invoke-direct {v10, p0, v9}, Lorg/telegram/khalkhaloka/FontSelectDialogCell$1;-><init>(Lorg/telegram/khalkhaloka/FontSelectDialogCell;Landroid/widget/RadioGroup;)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getFont1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->num_font:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->num_font:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_01:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_02:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_03:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_04:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_05:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_06:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_07:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_08:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_09:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/khalkhaloka/FontSelectDialogCell;->r_10:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_9
    return-void
.end method
