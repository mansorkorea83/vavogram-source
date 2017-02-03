.class Lorg/telegram/khalkhaloka/Main$19;
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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Main$19;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "bazaar://collection?stug=by_author&aid=mansorrashidi"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "com.farsitel.bazaar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Main$19;->this$0:Lorg/telegram/khalkhaloka/Main;

    invoke-virtual {v1, v0}, Lorg/telegram/khalkhaloka/Main;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
