.class Lorg/telegram/khalkhaloka/Profile_page$2;
.super Ljava/lang/Object;
.source "Profile_page.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Profile_page;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Profile_page;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Profile_page;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Profile_page$2;->this$0:Lorg/telegram/khalkhaloka/Profile_page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Profile_page$2;->this$0:Lorg/telegram/khalkhaloka/Profile_page;

    #getter for: Lorg/telegram/khalkhaloka/Profile_page;->ed:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Profile_page;->access$000(Lorg/telegram/khalkhaloka/Profile_page;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Profile_page$2;->this$0:Lorg/telegram/khalkhaloka/Profile_page;

    #getter for: Lorg/telegram/khalkhaloka/Profile_page;->ed:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Profile_page;->access$000(Lorg/telegram/khalkhaloka/Profile_page;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Profile_page$2;->this$0:Lorg/telegram/khalkhaloka/Profile_page;

    #getter for: Lorg/telegram/khalkhaloka/Profile_page;->ed:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Profile_page;->access$000(Lorg/telegram/khalkhaloka/Profile_page;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
