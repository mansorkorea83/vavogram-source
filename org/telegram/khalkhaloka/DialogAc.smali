.class public Lorg/telegram/khalkhaloka/DialogAc;
.super Landroid/app/Activity;
.source "DialogAc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v11, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/DialogAc;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/DialogAc;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v11, v11}, Landroid/view/Window;->setFlags(II)V

    const v10, 0x7f04001b

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/DialogAc;->setContentView(I)V

    const/4 v10, 0x2

    :try_start_0
    invoke-static {v10}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/DialogAc;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/DialogAc;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "fonts/iransans_light.ttf"

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const v10, 0x7f10007f

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/DialogAc;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x7f100081

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/DialogAc;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/DialogAc;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v10, "TEXT"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "URL"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f100080

    invoke-virtual {p0, v10}, Lorg/telegram/khalkhaloka/DialogAc;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v10, Lorg/telegram/khalkhaloka/DialogAc$1;

    invoke-direct {v10, p0, v9}, Lorg/telegram/khalkhaloka/DialogAc$1;-><init>(Lorg/telegram/khalkhaloka/DialogAc;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
