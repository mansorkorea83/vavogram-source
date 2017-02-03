.class Lorg/telegram/khalkhaloka/OtherTools$13;
.super Ljava/lang/Object;
.source "OtherTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/OtherTools;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/OtherTools;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/OtherTools;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/OtherTools$13;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21

    new-instance v7, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/OtherTools$13;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v19, 0x7f040035

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/OtherTools$13;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/khalkhaloka/OtherTools;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string/jumbo v20, "fonts/iransansbold.ttf"

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    const v19, 0x7f10010f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v19, 0x7f100111

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v19, 0x7f100113

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v19, 0x7f100115

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v19, 0x7f100118

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v19, 0x7f100092

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v19, 0x7f1000b1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const v19, 0x7f1000ae

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    const v19, 0x7f1000b4

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const v19, 0x7f100116

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v19, 0x7f10010e

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v19, 0x7f100110

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v19, 0x7f100112

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v19, 0x7f100114

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v19, 0x7f100117

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v19, Lorg/telegram/khalkhaloka/OtherTools$13$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lorg/telegram/khalkhaloka/OtherTools$13$1;-><init>(Lorg/telegram/khalkhaloka/OtherTools$13;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v19, Lorg/telegram/khalkhaloka/OtherTools$13$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lorg/telegram/khalkhaloka/OtherTools$13$2;-><init>(Lorg/telegram/khalkhaloka/OtherTools$13;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v19, Lorg/telegram/khalkhaloka/OtherTools$13$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lorg/telegram/khalkhaloka/OtherTools$13$3;-><init>(Lorg/telegram/khalkhaloka/OtherTools$13;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v19, Lorg/telegram/khalkhaloka/OtherTools$13$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lorg/telegram/khalkhaloka/OtherTools$13$4;-><init>(Lorg/telegram/khalkhaloka/OtherTools$13;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v19, Lorg/telegram/khalkhaloka/OtherTools$13$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lorg/telegram/khalkhaloka/OtherTools$13$5;-><init>(Lorg/telegram/khalkhaloka/OtherTools$13;Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method
