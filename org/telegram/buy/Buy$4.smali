.class Lorg/telegram/buy/Buy$4;
.super Ljava/lang/Object;
.source "Buy.java"

# interfaces
.implements Lutil/IabHelper$QueryInventoryFinishedListener;


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

    iput-object p1, p0, Lorg/telegram/buy/Buy$4;->this$0:Lorg/telegram/buy/Buy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lutil/IabResult;Lutil/Inventory;)V
    .locals 4

    const v3, 0x7f0804da

    const/4 v2, 0x1

    invoke-virtual {p1}, Lutil/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/buy/Buy$4;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lorg/telegram/buy/Buy;->access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/buy/Buy$4;->this$0:Lorg/telegram/buy/Buy;

    iget-object v1, v1, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v1, "art.telegram"

    invoke-virtual {p2, v1}, Lutil/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/buy/Buy$verify_buying;

    iget-object v2, p0, Lorg/telegram/buy/Buy$4;->this$0:Lorg/telegram/buy/Buy;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/buy/Buy$verify_buying;-><init>(Lorg/telegram/buy/Buy;Lorg/telegram/buy/Buy$1;)V

    sget-object v2, Lorg/telegram/buy/Cheker;->urls:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/buy/Buy$verify_buying;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/buy/Buy$4;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lorg/telegram/buy/Buy;->access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/buy/Buy$4;->this$0:Lorg/telegram/buy/Buy;

    iget-object v1, v1, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
