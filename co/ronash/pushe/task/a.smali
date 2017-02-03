.class public abstract Lco/ronash/pushe/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 1

    invoke-virtual {p0, p1}, Lco/ronash/pushe/task/a;->a(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/task/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/task/a;->a:Ljava/lang/String;

    return-void
.end method
