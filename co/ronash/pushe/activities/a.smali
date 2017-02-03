.class Lco/ronash/pushe/activities/a;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lco/ronash/pushe/activities/PopupDialogActivity;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iput-object p2, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 14

    const/4 v13, -0x2

    const/4 v4, 0x0

    const/16 v12, 0x11

    const/4 v6, 0x1

    const/4 v11, -0x1

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v2, "big_title"

    invoke-virtual {v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v2

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v2

    const-string/jumbo v5, "big_content"

    invoke-virtual {v2, v5}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v5}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v5

    const-string/jumbo v7, "icon"

    invoke-virtual {v5, v7}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v5}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v5

    const-string/jumbo v7, "big_icon"

    invoke-virtual {v5, v7}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v5, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v5}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v5

    const-string/jumbo v7, "buttons"

    invoke-virtual {v5, v7}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v10

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v7, v6

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_0
    if-eqz v7, :cond_4

    :goto_2
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_5

    move-object v0, v2

    :goto_3
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v10, :cond_6

    new-instance v0, Lco/ronash/pushe/h/a/p;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/p;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lco/ronash/pushe/h/a/p;->a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v4

    :cond_1
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/a/m;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->a()Lco/ronash/pushe/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/a/a;->a()Lco/ronash/pushe/a/c;

    move-result-object v2

    sget-object v4, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    if-eq v2, v4, :cond_1

    new-instance v4, Lco/ronash/pushe/activities/b;

    invoke-direct {v4, p0, p1, v0}, Lco/ronash/pushe/activities/b;-><init>(Lco/ronash/pushe/activities/a;Landroid/content/Context;Lco/ronash/pushe/h/a/m;)V

    add-int/lit8 v2, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_5
    move v1, v2

    goto :goto_4

    :cond_2
    move v7, v4

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :pswitch_1
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :pswitch_2
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_6
    move v1, v4

    :cond_7
    if-nez v1, :cond_8

    sget v0, Lco/ronash/pushe/R$string;->pushe_close_dialog:I

    new-instance v1, Lco/ronash/pushe/activities/c;

    invoke-direct {v1, p0, p1}, Lco/ronash/pushe/activities/c;-><init>(Lco/ronash/pushe/activities/a;Landroid/content/Context;)V

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8
    new-instance v0, Lco/ronash/pushe/activities/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/activities/d;-><init>(Lco/ronash/pushe/activities/a;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v1

    const-string/jumbo v2, "dialog_in1"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v1

    const-string/jumbo v2, "dialog_in2"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->b(Lco/ronash/pushe/activities/PopupDialogActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0, v6}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Z)Z

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->b(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_c
    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    new-instance v1, Lco/ronash/pushe/activities/e;

    invoke-direct {v1, p0, v8}, Lco/ronash/pushe/activities/e;-><init>(Lco/ronash/pushe/activities/a;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
