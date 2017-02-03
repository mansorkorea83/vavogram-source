.class Lorg/telegram/khalkhaloka/Makeh$1;
.super Ljava/lang/Object;
.source "Makeh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Makeh;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Makeh;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Makeh;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Makeh$1;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Makeh$1;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    invoke-virtual {v0}, Lorg/telegram/khalkhaloka/Makeh;->finish()V

    return-void
.end method
