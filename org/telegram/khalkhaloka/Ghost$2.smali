.class Lorg/telegram/khalkhaloka/Ghost$2;
.super Ljava/lang/Object;
.source "Ghost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Ghost;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Ghost;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Ghost;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0804fc

    const v1, 0x7f0804d0

    invoke-static {}, Lorg/telegram/hoshyar/Helper/GhostPorotocol;->toggleGhostPortocol()V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getGhostMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v1, "#E800B630"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Ghost;->txt_03:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Ghost$2;->this$0:Lorg/telegram/khalkhaloka/Ghost;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Ghost;->txt_state:Landroid/widget/TextView;

    const-string/jumbo v1, "#FFCC030A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
