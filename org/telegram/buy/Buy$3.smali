.class Lorg/telegram/buy/Buy$3;
.super Ljava/lang/Object;
.source "Buy.java"

# interfaces
.implements Lutil/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/buy/Buy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/buy/Buy;


# direct methods
.method constructor <init>(Lorg/telegram/buy/Buy;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lutil/IabResult;Lutil/Purchase;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lutil/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    const-string/jumbo v3, "Prefs"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/buy/Buy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {p2}, Lutil/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    const v3, 0x7f0800c5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lorg/telegram/buy/Buy;->access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    iget-object v2, v2, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    const v3, 0x7f0804db

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lorg/telegram/buy/Buy$verify_buying;

    iget-object v3, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/telegram/buy/Buy$verify_buying;-><init>(Lorg/telegram/buy/Buy;Lorg/telegram/buy/Buy$1;)V

    sget-object v3, Lorg/telegram/buy/Cheker;->urls:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/buy/Buy$verify_buying;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lutil/IabResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/buy/Buy$3;->this$0:Lorg/telegram/buy/Buy;

    const v3, 0x7f0800c8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
