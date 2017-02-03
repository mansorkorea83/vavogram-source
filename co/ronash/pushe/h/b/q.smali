.class public abstract Lco/ronash/pushe/h/b/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lco/ronash/pushe/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
.end method

.method protected a(Lco/ronash/pushe/h/a;)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lco/ronash/pushe/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V
    .locals 2

    const-string/jumbo v0, "message_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a;->a(Ljava/lang/String;)V

    return-void
.end method
