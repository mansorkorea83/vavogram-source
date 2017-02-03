.class public Lorg/telegram/khalkhaloka/Comment;
.super Landroid/app/Activity;
.source "Comment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Comment;->setContentView(I)V

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Comment;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/iransans_light.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const v4, 0x7f10007f

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Comment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f100081

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Comment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f100080

    invoke-virtual {p0, v4}, Lorg/telegram/khalkhaloka/Comment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v4, Lorg/telegram/khalkhaloka/Comment$1;

    invoke-direct {v4, p0}, Lorg/telegram/khalkhaloka/Comment$1;-><init>(Lorg/telegram/khalkhaloka/Comment;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
