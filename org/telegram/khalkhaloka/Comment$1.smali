.class Lorg/telegram/khalkhaloka/Comment$1;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Comment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Comment;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Comment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Comment$1;->this$0:Lorg/telegram/khalkhaloka/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Comment$1;->this$0:Lorg/telegram/khalkhaloka/Comment;

    const-string/jumbo v4, "Prefs"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/khalkhaloka/Comment;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "FIRSTRUNxxcxz"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "bazaar://details?id=ir.vavogram1.rashidi"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v3, "com.farsitel.bazaar"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Comment$1;->this$0:Lorg/telegram/khalkhaloka/Comment;

    invoke-virtual {v3, v1}, Lorg/telegram/khalkhaloka/Comment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
