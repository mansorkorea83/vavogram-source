.class Lorg/telegram/khalkhaloka/Security$2$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Security$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/khalkhaloka/Security$2;

.field final synthetic val$dialog_co:Landroid/app/Dialog;

.field final synthetic val$st_ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Security$2;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Security$2$1;->this$1:Lorg/telegram/khalkhaloka/Security$2;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->val$st_ed:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/khalkhaloka/Security$2$1;->val$dialog_co:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getPass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->this$1:Lorg/telegram/khalkhaloka/Security$2;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/Security$2;->this$0:Lorg/telegram/khalkhaloka/Security;

    const v3, 0x7f080529

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->val$st_ed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->this$1:Lorg/telegram/khalkhaloka/Security$2;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/Security$2;->this$0:Lorg/telegram/khalkhaloka/Security;

    const-class v3, Lorg/telegram/ui/Security_01;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->this$1:Lorg/telegram/khalkhaloka/Security$2;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/Security$2;->this$0:Lorg/telegram/khalkhaloka/Security;

    invoke-virtual {v2, v0}, Lorg/telegram/khalkhaloka/Security;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->val$dialog_co:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/khalkhaloka/Security$2$1;->this$1:Lorg/telegram/khalkhaloka/Security$2;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/Security$2;->this$0:Lorg/telegram/khalkhaloka/Security;

    const v3, 0x7f080468

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
