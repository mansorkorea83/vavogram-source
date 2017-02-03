.class Lorg/telegram/khalkhaloka/Posteh$6;
.super Ljava/lang/Object;
.source "Posteh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Posteh;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Posteh;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Posteh;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Posteh$6;->this$0:Lorg/telegram/khalkhaloka/Posteh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setCustomTheme(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Posteh$6;->this$0:Lorg/telegram/khalkhaloka/Posteh;

    const v1, 0x7f080369

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Posteh$6;->this$0:Lorg/telegram/khalkhaloka/Posteh;

    invoke-virtual {v0}, Lorg/telegram/khalkhaloka/Posteh;->finish()V

    return-void
.end method
