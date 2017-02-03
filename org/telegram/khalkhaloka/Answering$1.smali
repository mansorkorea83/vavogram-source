.class Lorg/telegram/khalkhaloka/Answering$1;
.super Ljava/lang/Object;
.source "Answering.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Answering;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Answering;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Answering;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Answering$1;->this$0:Lorg/telegram/khalkhaloka/Answering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$1;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->ed:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setAnsweringmachineText(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
