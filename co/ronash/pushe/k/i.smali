.class public abstract Lco/ronash/pushe/k/i;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lco/ronash/pushe/h/a/l;I)Lco/ronash/pushe/k/i;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lco/ronash/pushe/k/j;

    invoke-direct {v0, p0, p1, p2}, Lco/ronash/pushe/k/j;-><init>(Landroid/content/Context;Lco/ronash/pushe/h/a/l;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lco/ronash/pushe/k/k;

    invoke-direct {v0, p0, p1, p2}, Lco/ronash/pushe/k/k;-><init>(Landroid/content/Context;Lco/ronash/pushe/h/a/l;I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/app/Notification;
.end method
