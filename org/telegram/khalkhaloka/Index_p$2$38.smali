.class Lorg/telegram/khalkhaloka/Index_p$2$38;
.super Ljava/lang/Object;
.source "Index_p.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Index_p$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/khalkhaloka/Index_p$2;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Index_p$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Index_p$2$38;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Index_p$2$38;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    invoke-virtual {v1}, Lorg/telegram/khalkhaloka/Index_p;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Index_p$2$38;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Index_p$2$38;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    const v2, 0x7f080534

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
