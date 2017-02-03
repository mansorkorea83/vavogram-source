.class Lorg/telegram/khalkhaloka/Idfinder$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "Idfinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Idfinder;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Idfinder;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Idfinder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Idfinder$1;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$1;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    invoke-virtual {v0}, Lorg/telegram/khalkhaloka/Idfinder;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$1;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$000(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder$1;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_0
.end method
