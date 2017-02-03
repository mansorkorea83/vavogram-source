.class Lco/ronash/pushe/activities/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lco/ronash/pushe/activities/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/c;->b:Lco/ronash/pushe/activities/a;

    iput-object p2, p0, Lco/ronash/pushe/activities/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lco/ronash/pushe/activities/c;->b:Lco/ronash/pushe/activities/a;

    iget-object v0, v0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/content/Context;Lco/ronash/pushe/a/a;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Z)V

    return-void
.end method
