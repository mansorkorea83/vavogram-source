.class Lorg/telegram/khalkhaloka/Main$6;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Main;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Main;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Main$6;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Main$6;->this$0:Lorg/telegram/khalkhaloka/Main;

    const-class v2, Lorg/telegram/ui/SuperGroup_01;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Main$6;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v1, v0}, Lorg/telegram/khalkhaloka/Main;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
