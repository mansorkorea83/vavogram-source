.class Lorg/telegram/khalkhaloka/Index_p$2;
.super Ljava/lang/Object;
.source "Index_p.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Index_p;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Index_p;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Index_p;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    const v6, 0x7f080533

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->main_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->continue_ly:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_01a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_02a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_03a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_04a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_05a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->main_io:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->scrolla:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_01:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$1;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$1;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_01:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2593\u2592\u2591"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2591\u2592\u2593\u2588\u2587\u2586\u2585\u2584\u2583\u2582"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v2, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_01:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$2;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$2;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_01:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2593\u2592\u2591"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2591\u2592\u2593\u2588\u2587\u2586\u2585\u2584\u2583\u2582"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    move-object v0, v2

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_02:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$3;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$3;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_02:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(\u00af`\u273f.\u00b8(\u00af`\u2019\u2665."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".\u2665\u2019\u00b4\u00af)\u00b8.\u273f \u2018\u00b4\u00af)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_4
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator3(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_4
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_02:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$4;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$4;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_02:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(\u00af`\u273f.\u00b8(\u00af`\u2019\u2665."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".\u2665\u2019\u00b4\u00af)\u00b8.\u273f \u2018\u00b4\u00af)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_5
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_03:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$5;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$5;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_03:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u02dc\u201d*\u00b0\u2022.\u02dc\u201d*\u00b0\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022\u00b0*\u201d\u02dc.\u2022\u00b0*\u201d\u02dc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_6
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_6
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_03:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$6;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$6;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_03:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u02dc\u201d*\u00b0\u2022.\u02dc\u201d*\u00b0\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022\u00b0*\u201d\u02dc.\u2022\u00b0*\u201d\u02dc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_7
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_04:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$7;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$7;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_04:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u25d4\u035c\u0361\u25d4 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u25d4\u035c\u0361\u25d4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_8
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_04:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$8;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$8;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_04:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u25d4\u035c\u0361\u25d4 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u25d4\u035c\u0361\u25d4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_9
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_05:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$9;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$9;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_05:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2018\u00b0\u00ba\u00f8\u2022\u2764\u2022.\u00b8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00b8.\u2022\u2764\u2022\u00f8\u00ba\u00b0\u2018"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_a
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator6(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_a
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_05:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$10;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$10;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_05:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2018\u00b0\u00ba\u00f8\u2022\u2764\u2022.\u00b8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00b8.\u2022\u2764\u2022\u00f8\u00ba\u00b0\u2018"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_b
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_06:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$11;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$11;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_06:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u25e6\u2022\u25cf\u25c9\u273f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u273f\u25c9\u25cf\u2022\u25e6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_c
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator7(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_06:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$12;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$12;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_06:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u25e6\u2022\u25cf\u25c9\u273f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u273f\u25c9\u25cf\u2022\u25e6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_d
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_07:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$13;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$13;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_07:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ".\u2022\u266b\u2022\u266c\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022\u266c\u2022\u266b\u2022."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_e
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator8(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_07:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$14;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$14;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_07:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ".\u2022\u266b\u2022\u266c\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022\u266c\u2022\u266b\u2022."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_f
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_08:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$15;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$15;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_08:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_10
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator9(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_08:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$16;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$16;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_08:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_11
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_09:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$17;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$17;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_09:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_12
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator10(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_09:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$18;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$18;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_09:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_13
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_10:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$19;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$19;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_10:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u02d9\u0387\u0660\u2022\u25cf\u2665"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_14
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_10:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$20;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$20;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_10:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u02d9\u0387\u0660\u2022\u25cf\u2665"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_15
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_11:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$21;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$21;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_11:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u25cf\u25ac\u25ac\u0e51\u06e9\u06e9\u0e51"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u0e51\u06e9\u06e9\u0e51\u25ac\u25ac\u25cf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_16
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator12(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_11:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$22;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$22;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_11:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u25cf\u25ac\u25ac\u0e51\u06e9\u06e9\u0e51"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u0e51\u06e9\u06e9\u0e51\u25ac\u25ac\u25cf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :cond_17
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_12:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$23;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$23;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_12:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_18
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator13(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_12:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$24;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$24;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_12:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_19
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_13:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$25;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$25;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_13:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_1a
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator14(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_13:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$26;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$26;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_13:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    :cond_1b
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_14:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$27;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$27;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_14:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2730\u2730(\u00af`*\u2022."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_1c
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator15(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_14:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$28;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$28;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_14:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2730\u2730(\u00af`*\u2022."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_1d
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_15:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$29;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$29;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_15:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(\u273f\u25e0\u203f\u25e0\u2665)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(\u2665\u25e0\u203f\u25e0\u273f)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_1e
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator16(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_15:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$30;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$30;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_15:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(\u273f\u25e0\u203f\u25e0\u2665)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(\u2665\u25e0\u203f\u25e0\u273f)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    :cond_1f
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_16:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$31;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$31;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_16:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_20
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator17(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_20
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_16:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$32;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$32;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_16:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    :cond_21
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_17:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$33;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$33;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_17:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2219\u2219\u2219\u2219\u2219\u00b7\u25ab\u25ab\u1d52\u1d3c\u1d52 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u1d52\u1d3c\u1d52\u25ab\u25ab\u00b7\u2219\u2219\u2219\u2219\u2219 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_22
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator18(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_22
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_17:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$34;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$34;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_17:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2219\u2219\u2219\u2219\u2219\u00b7\u25ab\u25ab\u1d52\u1d3c\u1d52 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u1d52\u1d3c\u1d52\u25ab\u25ab\u00b7\u2219\u2219\u2219\u2219\u2219 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    :cond_23
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_18:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$35;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$35;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_18:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u02d9\u0387\u0660\u2022\u25cf\u2665 \u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7 \u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_24
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator19(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_18:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$36;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$36;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_18:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u02d9\u0387\u0660\u2022\u25cf\u2665 \u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7 \u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :cond_25
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_19:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$37;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$37;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_19:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " \u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8\u2764"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u2764\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_26
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator20(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_26
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_19:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$38;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$38;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_19:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " \u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8\u2764"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \u2764\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    :cond_27
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_20:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$39;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$39;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_20:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_28
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator21(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_20:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$40;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$40;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_20:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    :cond_29
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_21:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$41;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$41;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_21:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " .:**:.\u2606*.:\uff61.\u273f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u273f.\uff61.:* \u2606:**:."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_2a
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator22(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_21:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$42;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$42;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_21:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " .:**:.\u2606*.:\uff61.\u273f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u273f.\uff61.:* \u2606:**:."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    :cond_2b
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_22:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$43;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$43;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_22:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_2c
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v6, v6, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lorg/telegram/khalkhaloka/Index_p;->arraysplator23(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_22:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$44;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$44;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_22:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    :cond_2d
    move-object v0, v1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_23:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$45;

    invoke-direct {v6, p0, v0}, Lorg/telegram/khalkhaloka/Index_p$2$45;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_23:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2730\u2730(\u00af`*\u2022.\u00b8,\u00a4\u00b0 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00b0\u00a4,\u00b8.\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->list2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_2e
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_01:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$47;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$47;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_02:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$48;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$48;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_03:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$49;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$49;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_04:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$50;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$50;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_05:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$51;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$51;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_06:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$52;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$52;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_07:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$53;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$53;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_08:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$54;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$54;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_09:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$55;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$55;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_10:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$56;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$56;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_11:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$57;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$57;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_12:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$58;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$58;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_13:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$59;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$59;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_14:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$60;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$60;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_15:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$61;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$61;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_16:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$62;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$62;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_17:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$63;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$63;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_18:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$64;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$64;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_19:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$65;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$65;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_20:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$66;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$66;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_21:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$67;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$67;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_22:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$68;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$68;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->fr_23:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$69;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$69;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2e
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->clip_23:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/khalkhaloka/Index_p$2$46;

    invoke-direct {v6, p0}, Lorg/telegram/khalkhaloka/Index_p$2$46;-><init>(Lorg/telegram/khalkhaloka/Index_p$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v5, v5, Lorg/telegram/khalkhaloka/Index_p;->change_23:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2730\u2730(\u00af`*\u2022.\u00b8,\u00a4\u00b0 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    iget-object v7, v7, Lorg/telegram/khalkhaloka/Index_p;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u00b0\u00a4,\u00b8.\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e
.end method
