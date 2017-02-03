.class Lorg/telegram/khalkhaloka/Idfinder$5$1$1;
.super Ljava/lang/Object;
.source "Idfinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Idfinder$5$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Idfinder$5$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #setter for: Lorg/telegram/khalkhaloka/Idfinder;->checkReqId:I
    invoke-static {v0, v5}, Lorg/telegram/khalkhaloka/Idfinder;->access$302(Lorg/telegram/khalkhaloka/Idfinder;I)I

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->lastCheckName:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$400(Lorg/telegram/khalkhaloka/Idfinder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->lastCheckName:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$400(Lorg/telegram/khalkhaloka/Idfinder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v1, v1, Lorg/telegram/khalkhaloka/Idfinder$5;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$500(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "UsernameInUse"

    const v2, 0x7f08053d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$500(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x30cfd0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #setter for: Lorg/telegram/khalkhaloka/Idfinder;->lastNameAvailable:Z
    invoke-static {v0, v3}, Lorg/telegram/khalkhaloka/Idfinder;->access$602(Lorg/telegram/khalkhaloka/Idfinder;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$500(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "UsernameAvailable"

    const v2, 0x7f08048b

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v4, v4, Lorg/telegram/khalkhaloka/Idfinder$5;->val$name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #getter for: Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/khalkhaloka/Idfinder;->access$500(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xd968d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder$5$1$1;->this$2:Lorg/telegram/khalkhaloka/Idfinder$5$1;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5$1;->this$1:Lorg/telegram/khalkhaloka/Idfinder$5;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    #setter for: Lorg/telegram/khalkhaloka/Idfinder;->lastNameAvailable:Z
    invoke-static {v0, v5}, Lorg/telegram/khalkhaloka/Idfinder;->access$602(Lorg/telegram/khalkhaloka/Idfinder;Z)Z

    goto :goto_0
.end method
