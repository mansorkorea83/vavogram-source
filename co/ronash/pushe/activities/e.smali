.class Lco/ronash/pushe/activities/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog$Builder;

.field final synthetic b:Lco/ronash/pushe/activities/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/a;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/e;->b:Lco/ronash/pushe/activities/a;

    iput-object p2, p0, Lco/ronash/pushe/activities/e;->a:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/activities/e;->b:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/e;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lco/ronash/pushe/activities/e;->b:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->c(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
