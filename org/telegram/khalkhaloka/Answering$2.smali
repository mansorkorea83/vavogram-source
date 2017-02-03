.class Lorg/telegram/khalkhaloka/Answering$2;
.super Ljava/lang/Object;
.source "Answering.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0804fc

    const v3, 0x7f0804d0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getAnsweringMachine()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setAnsweringMachine(Ljava/lang/Boolean;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getAnsweringMachine()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setAnsweringMachine(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v1, "#E800B630"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setAnsweringMachine(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Answering$2;->this$0:Lorg/telegram/khalkhaloka/Answering;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Answering;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v1, "#FFCC030A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
