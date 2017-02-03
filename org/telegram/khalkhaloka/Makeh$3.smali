.class Lorg/telegram/khalkhaloka/Makeh$3;
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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Makeh$3;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$3;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Makeh;->ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Makeh$3;->this$0:Lorg/telegram/khalkhaloka/Makeh;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Makeh;->ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method
