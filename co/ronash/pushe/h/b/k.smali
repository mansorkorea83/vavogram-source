.class public Lco/ronash/pushe/h/b/k;
.super Lco/ronash/pushe/h/b/o;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lco/ronash/pushe/e/l;

.field private c:Lco/ronash/pushe/e/m;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/o;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/h/b/k;I)I
    .locals 0

    iput p1, p0, Lco/ronash/pushe/h/b/k;->i:I

    return p1
.end method

.method static synthetic a(Lco/ronash/pushe/h/b/k;Lco/ronash/pushe/e/l;)Lco/ronash/pushe/e/l;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->b:Lco/ronash/pushe/e/l;

    return-object p1
.end method

.method static synthetic a(Lco/ronash/pushe/h/b/k;Lco/ronash/pushe/e/m;)Lco/ronash/pushe/e/m;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->c:Lco/ronash/pushe/e/m;

    return-object p1
.end method

.method static synthetic a(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lco/ronash/pushe/h/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/b/k;->g:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public b()Lco/ronash/pushe/k/l;
    .locals 3

    invoke-super {p0}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "device_id"

    iget-object v2, p0, Lco/ronash/pushe/h/b/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "brand"

    iget-object v2, p0, Lco/ronash/pushe/h/b/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "model"

    iget-object v2, p0, Lco/ronash/pushe/h/b/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "os_version"

    iget-object v2, p0, Lco/ronash/pushe/h/b/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lco/ronash/pushe/h/b/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "av_code"

    iget v2, p0, Lco/ronash/pushe/h/b/k;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lco/ronash/pushe/h/b/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Lco/ronash/pushe/h/b/p;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b/p;->c:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
