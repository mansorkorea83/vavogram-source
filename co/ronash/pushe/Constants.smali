.class public Lco/ronash/pushe/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final F_CUSTOM_CONTENT:Ljava/lang/String; = "custom_content"

.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "http://4.ifcfg.me/json"

    const-string/jumbo v3, "ip"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "http://ifcfg.me/json"

    const-string/jumbo v3, "ip"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "https://wtfismyip.com/json"

    const-string/jumbo v3, "YourFuckingIPAddress"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "http://ipinfo.io/json"

    const-string/jumbo v3, "ip"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "http://ip-api.com/json/?callback=yourfunction"

    const-string/jumbo v3, "query"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "https://api.ipify.org?format=json"

    const-string/jumbo v3, "ip"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "http://icanhazip.com/"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "http://ip.ronash.co/geoip"

    const-string/jumbo v3, "ip"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
