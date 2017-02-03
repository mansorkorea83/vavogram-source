.class public Lco/ronash/pushe/a/a/d;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .locals 2

    new-instance v0, Lco/ronash/pushe/a/a/c;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/c;-><init>()V

    const-string/jumbo v1, "android.intent.action.EDIT"

    iput-object v1, v0, Lco/ronash/pushe/a/a/c;->c:Ljava/lang/String;

    const-string/jumbo v1, "com.farsitel.bazaar"

    iput-object v1, v0, Lco/ronash/pushe/a/a/c;->d:Ljava/lang/String;

    return-object v0
.end method
