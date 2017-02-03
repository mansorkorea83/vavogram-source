.class Lorg/telegram/khalkhaloka/Makeh$2;
.super Ljava/lang/Object;
.source "Makeh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Makeh;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Makeh;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Makeh;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Makeh$2;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$2;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Makeh;->ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$2;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    const v2, 0x7f080521

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$2;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    invoke-virtual {v1}, Lorg/telegram/khalkhaloka/Makeh;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$2;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Makeh;->ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$2;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    const v2, 0x7f080534

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
