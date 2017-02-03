.class Lco/ronash/pushe/receiver/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lco/ronash/pushe/receiver/BootAndScreenReceiver;


# direct methods
.method constructor <init>(Lco/ronash/pushe/receiver/BootAndScreenReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/receiver/a;->b:Lco/ronash/pushe/receiver/BootAndScreenReceiver;

    iput-object p2, p0, Lco/ronash/pushe/receiver/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lco/ronash/pushe/b/a;->a()Lco/ronash/pushe/b/a;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/receiver/a;->a:Landroid/content/Context;

    sget-object v2, Lco/ronash/pushe/b/b;->g:Lco/ronash/pushe/b/b;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/b/a;->b(Landroid/content/Context;Lco/ronash/pushe/b/b;)V

    return-void
.end method
