.class public Lco/ronash/pushe/a/a/q;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .locals 3

    new-instance v0, Lco/ronash/pushe/a/a/p;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/p;-><init>()V

    const-string/jumbo v1, "url"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lco/ronash/pushe/a/a/p;->a:Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iput-object v1, v0, Lco/ronash/pushe/a/a/p;->c:Ljava/lang/String;

    return-object v0
.end method
