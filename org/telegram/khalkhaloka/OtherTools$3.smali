.class Lorg/telegram/khalkhaloka/OtherTools$3;
.super Ljava/lang/Object;
.source "OtherTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/OtherTools;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/OtherTools;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/OtherTools;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/OtherTools$3;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/khalkhaloka/OtherTools$3;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    const v4, 0x7f08053a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lorg/telegram/khalkhaloka/OtherTools$3;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    const-class v4, Lorg/telegram/khalkhaloka/Recorder;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/OtherTools$3;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    invoke-virtual {v3, v0}, Lorg/telegram/khalkhaloka/OtherTools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
