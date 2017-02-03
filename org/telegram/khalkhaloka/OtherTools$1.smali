.class Lorg/telegram/khalkhaloka/OtherTools$1;
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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/OtherTools$1;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/OtherTools$1;->this$0:Lorg/telegram/khalkhaloka/OtherTools;

    invoke-virtual {v0}, Lorg/telegram/khalkhaloka/OtherTools;->finish()V

    return-void
.end method
