.class Lorg/telegram/khalkhaloka/Main$24$5;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Main$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/khalkhaloka/Main$24;

.field final synthetic val$dialog_co_alert:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Main$24;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Main$24$5;->this$1:Lorg/telegram/khalkhaloka/Main$24;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Main$24$5;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Main$24$5;->this$1:Lorg/telegram/khalkhaloka/Main$24;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Main$24;->this$0:Lorg/telegram/khalkhaloka/Main;

    const-class v2, Lorg/telegram/ui/GoToMyCloud;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Main$24$5;->this$1:Lorg/telegram/khalkhaloka/Main$24;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Main$24;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v1, v0}, Lorg/telegram/khalkhaloka/Main;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Main$24$5;->val$dialog_co_alert:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
