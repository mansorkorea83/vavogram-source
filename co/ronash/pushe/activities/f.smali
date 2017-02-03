.class Lco/ronash/pushe/activities/f;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/a/a;

.field final synthetic b:Lco/ronash/pushe/activities/PopupDialogActivity;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/PopupDialogActivity;Lco/ronash/pushe/a/a;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/f;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iput-object p2, p0, Lco/ronash/pushe/activities/f;->a:Lco/ronash/pushe/a/a;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/f;->a:Lco/ronash/pushe/a/a;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/a/a;->a(Landroid/content/Context;)V

    return-void
.end method
