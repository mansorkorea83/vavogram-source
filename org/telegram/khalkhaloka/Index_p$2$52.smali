.class Lorg/telegram/khalkhaloka/Index_p$2$52;
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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Index_p$2$52;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$2$52;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    #calls: Lorg/telegram/khalkhaloka/Index_p;->saveName6()V
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Index_p;->access$500(Lorg/telegram/khalkhaloka/Index_p;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$2$52;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    const v1, 0x7f080535

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$2$52;->this$1:Lorg/telegram/khalkhaloka/Index_p$2;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Index_p$2;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    invoke-virtual {v0}, Lorg/telegram/khalkhaloka/Index_p;->finish()V

    return-void
.end method
