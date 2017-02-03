.class Lorg/telegram/khalkhaloka/Nicer$5;
.super Ljava/lang/Object;
.source "Nicer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Nicer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Nicer;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Nicer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Nicer$5;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    new-instance v1, Landroid/app/Dialog;

    iget-object v8, p0, Lorg/telegram/khalkhaloka/Nicer$5;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    invoke-direct {v1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    const v8, 0x7f040034

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v8, p0, Lorg/telegram/khalkhaloka/Nicer$5;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    invoke-virtual {v8}, Lorg/telegram/khalkhaloka/Nicer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "fonts/iransansbold.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v8, p0, Lorg/telegram/khalkhaloka/Nicer$5;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    invoke-virtual {v8}, Lorg/telegram/khalkhaloka/Nicer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "fonts/iransans_light.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    const v8, 0x7f10010a

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f10010c

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f10010d

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v8, 0x7f100092

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v8, 0x7f100093

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v8, Lorg/telegram/khalkhaloka/Nicer$5$1;

    invoke-direct {v8, p0, v1}, Lorg/telegram/khalkhaloka/Nicer$5$1;-><init>(Lorg/telegram/khalkhaloka/Nicer$5;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
