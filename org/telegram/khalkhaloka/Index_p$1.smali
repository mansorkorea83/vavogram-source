.class Lorg/telegram/khalkhaloka/Index_p$1;
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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Index_p$1;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Index_p$1;->this$0:Lorg/telegram/khalkhaloka/Index_p;

    invoke-virtual {v0}, Lorg/telegram/khalkhaloka/Index_p;->finish()V

    return-void
.end method
