.class public Lco/ronash/pushe/h;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lco/ronash/pushe/PusheListenerService;


# direct methods
.method public constructor <init>(Lco/ronash/pushe/PusheListenerService;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/PusheListenerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/PusheListenerService;

    invoke-static {v0}, Lco/ronash/pushe/PusheListenerService;->a(Lco/ronash/pushe/PusheListenerService;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/k/m;->a(Landroid/os/Bundle;)Lco/ronash/pushe/k/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/PusheListenerService;

    invoke-static {v1}, Lco/ronash/pushe/PusheListenerService;->a(Lco/ronash/pushe/PusheListenerService;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "messageContent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Landroid/os/Bundle;)Lco/ronash/pushe/k/l;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/PusheListenerService;

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/PusheListenerService;->onMessageReceived(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/PusheListenerService;

    iget-object v1, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/PusheListenerService;

    invoke-static {v1}, Lco/ronash/pushe/PusheListenerService;->b(Lco/ronash/pushe/PusheListenerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/PusheListenerService;->stopSelfResult(I)Z

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/ronash/pushe/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
