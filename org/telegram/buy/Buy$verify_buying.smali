.class Lorg/telegram/buy/Buy$verify_buying;
.super Landroid/os/AsyncTask;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/buy/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "verify_buying"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/buy/Buy;


# direct methods
.method private constructor <init>(Lorg/telegram/buy/Buy;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/buy/Buy;Lorg/telegram/buy/Buy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/buy/Buy$verify_buying;-><init>(Lorg/telegram/buy/Buy;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/buy/Buy$verify_buying;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v2}, Lorg/telegram/buy/Buy;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/buy/Cheker;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    const-string/jumbo v3, "Prefs"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/buy/Buy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "no"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "HTTP_TEST"

    const-string/jumbo v3, "Buy Page Get Server "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v2}, Lorg/telegram/buy/Buy;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/buy/Cheker;->GET_Server_Response(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/buy/Buy$verify_buying;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f0804da

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "purchase: ok"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    invoke-virtual {v2}, Lorg/telegram/buy/Buy;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/buy/Cheker;->saveData(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lorg/telegram/buy/Buy;->access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    iget-object v2, v2, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "HTML"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    const-string/jumbo v3, "Prefs"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/buy/Buy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "no"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    #getter for: Lorg/telegram/buy/Buy;->butBuy:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lorg/telegram/buy/Buy;->access$000(Lorg/telegram/buy/Buy;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    iget-object v2, v2, Lorg/telegram/buy/Buy;->txt_title_01a2:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lorg/telegram/buy/Buy$verify_buying;->this$0:Lorg/telegram/buy/Buy;

    const v3, 0x7f0800ca

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
