.class Lco/ronash/pushe/activities/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lco/ronash/pushe/activities/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/a;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/d;->a:Lco/ronash/pushe/activities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Z)V

    iget-object v0, p0, Lco/ronash/pushe/activities/d;->a:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-virtual {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->finish()V

    return-void
.end method
