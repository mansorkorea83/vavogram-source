.class Lorg/telegram/khalkhaloka/Font_select$1;
.super Ljava/lang/Object;
.source "Font_select.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Font_select;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Font_select;

.field final synthetic val$rd:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Font_select;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Font_select$1;->this$0:Lorg/telegram/khalkhaloka/Font_select;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Font_select$1;->val$rd:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Font_select$1;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Font_select$1;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const-string/jumbo v2, "Log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radio select"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string/jumbo v2, "0"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "2"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-string/jumbo v2, "3"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-string/jumbo v2, "4"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const-string/jumbo v2, "5"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    const-string/jumbo v2, "6"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    const-string/jumbo v2, "7"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    const-string/jumbo v2, "8"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    const-string/jumbo v2, "9"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "10"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setFont(Ljava/lang/String;)V

    goto :goto_0
.end method
