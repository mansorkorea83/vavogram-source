.class Lorg/telegram/khalkhaloka/Nicer$2;
.super Ljava/lang/Object;
.source "Nicer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Nicer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Nicer;

.field final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Nicer;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Nicer$2;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Nicer$2;->val$ed:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$2;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$2;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setSpaceCharacter(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$2;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    const v1, 0x7f080315

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
