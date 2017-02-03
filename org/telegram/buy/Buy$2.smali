.class Lorg/telegram/buy/Buy$2;
.super Ljava/lang/Object;
.source "Buy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/buy/Buy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/buy/Buy;

.field final synthetic val$regu:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lorg/telegram/buy/Buy;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    iput-object p2, p0, Lorg/telegram/buy/Buy$2;->val$regu:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v0}, Lorg/telegram/buy/Buy;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.farsitel.bazaar"

    invoke-static {v0, v1}, Lorg/telegram/buy/Cheker;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v0}, Lorg/telegram/buy/Buy;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/buy/Cheker;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->buyHelper:Lutil/IabHelper;
    invoke-static {v0}, Lorg/telegram/buy/Buy;->access$100(Lorg/telegram/buy/Buy;)Lutil/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    const-string/jumbo v2, "art.telegram"

    sget v3, Lorg/telegram/buy/Cheker;->BUY_REQUEST_CODE:I

    iget-object v4, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    iget-object v4, v4, Lorg/telegram/buy/Buy;->mPurchaseFinishedListener:Lutil/IabHelper$OnIabPurchaseFinishedListener;

    const-string/jumbo v5, "payload-string"

    invoke-virtual/range {v0 .. v5}, Lutil/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILutil/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v0}, Lorg/telegram/buy/Buy;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/sans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v0}, Lorg/telegram/buy/Buy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v1, 0x7f04006a

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    const v2, 0x7f100304

    invoke-virtual {v0, v2}, Lorg/telegram/buy/Buy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f100306

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f100305

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f0800c6

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->val$regu:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string/jumbo v0, "\u0647\u0634\u062f\u0627\u0631"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v11, Landroid/widget/Toast;

    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v0}, Lorg/telegram/buy/Buy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x50

    const/16 v1, 0x14

    invoke-virtual {v11, v0, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v11, v3}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v11, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/buy/Buy$2;->this$0:Lorg/telegram/buy/Buy;

    const v1, 0x7f0800c7

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
