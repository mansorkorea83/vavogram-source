.class Lorg/telegram/khalkhaloka/P_security$1;
.super Ljava/lang/Object;
.source "P_security.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/P_security;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/P_security;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/P_security;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/P_security;->txt_03:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    iget-object v2, v2, Lorg/telegram/khalkhaloka/P_security;->txt_04:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    const v3, 0x7f0803af

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    const v3, 0x7f08038b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setPass(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    const v3, 0x7f0803f0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    invoke-virtual {v2}, Lorg/telegram/khalkhaloka/P_security;->finish()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/khalkhaloka/P_security$1;->this$0:Lorg/telegram/khalkhaloka/P_security;

    const v3, 0x7f08038a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
