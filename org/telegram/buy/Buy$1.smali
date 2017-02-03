.class Lorg/telegram/buy/Buy$1;
.super Ljava/lang/Object;
.source "Buy.java"

# interfaces
.implements Lutil/IabHelper$OnIabSetupFinishedListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/buy/Buy;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/buy/Buy$1;->this$0:Lorg/telegram/buy/Buy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lutil/IabResult;)V
    .locals 3

    invoke-virtual {p1}, Lutil/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "art.telegram"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/buy/Buy$1;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lorg/telegram/buy/Buy;->access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/buy/Buy$1;->this$0:Lorg/telegram/buy/Buy;

    iget-object v1, v1, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    const v2, 0x7f0804da

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
