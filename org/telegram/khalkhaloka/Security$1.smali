.class Lorg/telegram/khalkhaloka/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Security;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Security;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Security;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Security$1;->this$0:Lorg/telegram/khalkhaloka/Security;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getPass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "default"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Security$1;->this$0:Lorg/telegram/khalkhaloka/Security;

    const-class v10, Lorg/telegram/khalkhaloka/P_security;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Security$1;->this$0:Lorg/telegram/khalkhaloka/Security;

    invoke-virtual {v9, v4}, Lorg/telegram/khalkhaloka/Security;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Security$1;->this$0:Lorg/telegram/khalkhaloka/Security;

    invoke-direct {v0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    const v9, 0x7f040036

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v9, p0, Lorg/telegram/khalkhaloka/Security$1;->this$0:Lorg/telegram/khalkhaloka/Security;

    invoke-virtual {v9}, Lorg/telegram/khalkhaloka/Security;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "fonts/iransansbold.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const v9, 0x7f100119

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const v9, 0x7f10010a

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f10010c

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f100092

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v9, 0x7f100093

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v9, Lorg/telegram/khalkhaloka/Security$1$1;

    invoke-direct {v9, p0, v6, v0}, Lorg/telegram/khalkhaloka/Security$1$1;-><init>(Lorg/telegram/khalkhaloka/Security$1;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
