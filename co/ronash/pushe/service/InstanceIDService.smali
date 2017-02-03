.class public Lco/ronash/pushe/service/InstanceIDService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    const-string/jumbo v0, "Token Refreshed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/c/a/k;

    invoke-direct {v0, p0}, Lco/ronash/pushe/c/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/k;->b()V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/k;->a()V

    return-void
.end method
