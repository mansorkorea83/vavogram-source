.class Lco/ronash/pushe/activities/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lco/ronash/pushe/h/a/m;

.field final synthetic c:Lco/ronash/pushe/activities/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/a;Landroid/content/Context;Lco/ronash/pushe/h/a/m;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/b;->c:Lco/ronash/pushe/activities/a;

    iput-object p2, p0, Lco/ronash/pushe/activities/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lco/ronash/pushe/activities/b;->b:Lco/ronash/pushe/h/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lco/ronash/pushe/activities/b;->c:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->b(Lco/ronash/pushe/activities/PopupDialogActivity;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/b;->c:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lco/ronash/pushe/activities/b;->b:Lco/ronash/pushe/h/a/m;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/m;->a()Lco/ronash/pushe/a/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/content/Context;Lco/ronash/pushe/a/a;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/b;->c:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->c(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/activities/b;->c:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->c(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Z)V

    return-void
.end method
