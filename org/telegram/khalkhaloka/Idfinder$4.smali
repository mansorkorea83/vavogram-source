.class Lorg/telegram/khalkhaloka/Idfinder$4;
.super Ljava/lang/Object;
.source "Idfinder.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Idfinder$4;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$4;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder$4;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/khalkhaloka/Idfinder;->access$000(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lorg/telegram/khalkhaloka/Idfinder;->checkUserName(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lorg/telegram/khalkhaloka/Idfinder;->access$200(Lorg/telegram/khalkhaloka/Idfinder;Ljava/lang/String;Z)Z

    return-void
.end method
