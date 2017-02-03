.class public Lco/ronash/pushe/PusheListenerService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/PusheListenerService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/PusheListenerService;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lco/ronash/pushe/PusheListenerService;)I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/PusheListenerService;->b:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageReceived(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lco/ronash/pushe/PusheListenerService;->a:Landroid/content/Intent;

    iput p3, p0, Lco/ronash/pushe/PusheListenerService;->b:I

    new-instance v0, Lco/ronash/pushe/h;

    invoke-direct {v0, p0}, Lco/ronash/pushe/h;-><init>(Lco/ronash/pushe/PusheListenerService;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    const/4 v0, 0x3

    return v0

    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
