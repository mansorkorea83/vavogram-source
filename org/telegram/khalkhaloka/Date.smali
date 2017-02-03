.class public Lorg/telegram/khalkhaloka/Date;
.super Landroid/app/Activity;
.source "Date.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Date;->getActionBar()Landroid/app/ActionBar;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActionBar;->hide()V

    const v22, 0x7f040023

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->setContentView(I)V

    const v22, 0x7f10008e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v22, 0x7f1000bb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v22, 0x7f1000be

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v22, 0x7f1000c4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v22, 0x7f1000c7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v22, 0x7f1000c1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v22, 0x7f10008d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v22, 0x7f10008c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v22, 0x7f1000c3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v22, 0x7f1000c0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v22, 0x7f1000c6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v22, 0x7f1000c2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v22, 0x7f1000c5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v22, 0x7f1000bf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v22, 0x7f1000ba

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v22, 0x7f1000b9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v22, 0x7f1000bd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v22, 0x7f1000bc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Date;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Date;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    const-string/jumbo v23, "fonts/iransansbold.ttf"

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Date;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    const-string/jumbo v23, "fonts/iransans_light.ttf"

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getDatePersian()Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getSendTyping()Z

    move-result v22

    if-eqz v22, :cond_1

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getShowTimeAgo()Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getAddToChannel()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getConVocie()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getConSticker()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    new-instance v22, Lorg/telegram/khalkhaloka/Date$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Date$1;-><init>(Lorg/telegram/khalkhaloka/Date;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v22, Lorg/telegram/khalkhaloka/Date$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Date$2;-><init>(Lorg/telegram/khalkhaloka/Date;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v22, Lorg/telegram/khalkhaloka/Date$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Date$3;-><init>(Lorg/telegram/khalkhaloka/Date;)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v22, Lorg/telegram/khalkhaloka/Date$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Date$4;-><init>(Lorg/telegram/khalkhaloka/Date;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v22, Lorg/telegram/khalkhaloka/Date$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Date$5;-><init>(Lorg/telegram/khalkhaloka/Date;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v22, Lorg/telegram/khalkhaloka/Date$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Date$6;-><init>(Lorg/telegram/khalkhaloka/Date;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5
.end method
