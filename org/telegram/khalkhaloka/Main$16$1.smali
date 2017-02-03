.class Lorg/telegram/khalkhaloka/Main$16$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Main$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/khalkhaloka/Main$16;

.field final synthetic val$dialog_co_alert:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Main$16;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Main$16$1;->this$1:Lorg/telegram/khalkhaloka/Main$16;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Main$16$1;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->this$1:Lorg/telegram/khalkhaloka/Main$16;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Main$16;->this$0:Lorg/telegram/khalkhaloka/Main;

    const-string/jumbo v5, "com.farsitel.bazaar"

    #calls: Lorg/telegram/khalkhaloka/Main;->appInstalledOrNot(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lorg/telegram/khalkhaloka/Main;->access$000(Lorg/telegram/khalkhaloka/Main;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->this$1:Lorg/telegram/khalkhaloka/Main$16;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Main$16;->this$0:Lorg/telegram/khalkhaloka/Main;

    const-class v5, Lorg/telegram/buy/Buy;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->this$1:Lorg/telegram/khalkhaloka/Main$16;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Main$16;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v4, v2}, Lorg/telegram/khalkhaloka/Main;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->this$1:Lorg/telegram/khalkhaloka/Main$16;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Main$16;->this$0:Lorg/telegram/khalkhaloka/Main;

    const v5, 0x7f0800af

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const-string/jumbo v3, "http://cafebazaar.ir"

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->this$1:Lorg/telegram/khalkhaloka/Main$16;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Main$16;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v4, v0}, Lorg/telegram/khalkhaloka/Main;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Main$16$1;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
