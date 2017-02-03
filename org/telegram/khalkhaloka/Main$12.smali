.class Lorg/telegram/khalkhaloka/Main$12;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Main;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$premium:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Main;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Main$12;->this$0:Lorg/telegram/khalkhaloka/Main;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Main$12;->val$premium:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/khalkhaloka/Main$12;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x1

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Main$12;->val$premium:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/khalkhaloka/Main$12;->val$id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Main$12;->this$0:Lorg/telegram/khalkhaloka/Main;

    const-class v10, Lorg/telegram/ui/IdFinder_m;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Main$12;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v9, v5}, Lorg/telegram/khalkhaloka/Main;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Main$12;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-direct {v1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    const v9, 0x7f040034

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Main$12;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v9}, Lorg/telegram/khalkhaloka/Main;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "fonts/iransansbold.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Main$12;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v9}, Lorg/telegram/khalkhaloka/Main;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "fonts/iransans_light.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    const v9, 0x7f10010a

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f10010c

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f10010d

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v9, 0x7f100092

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v9, 0x7f100093

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v9, Lorg/telegram/khalkhaloka/Main$12$1;

    invoke-direct {v9, p0, v1}, Lorg/telegram/khalkhaloka/Main$12$1;-><init>(Lorg/telegram/khalkhaloka/Main$12;Landroid/app/Dialog;)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
