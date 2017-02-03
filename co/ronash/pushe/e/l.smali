.class public final enum Lco/ronash/pushe/e/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/e/l;

.field public static final enum b:Lco/ronash/pushe/e/l;

.field public static final enum c:Lco/ronash/pushe/e/l;

.field private static d:Ljava/util/Map;

.field private static final synthetic f:[Lco/ronash/pushe/e/l;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Lco/ronash/pushe/e/l;

    const-string/jumbo v2, "PHONE"

    const-string/jumbo v3, "P"

    invoke-direct {v1, v2, v0, v3}, Lco/ronash/pushe/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lco/ronash/pushe/e/l;->a:Lco/ronash/pushe/e/l;

    new-instance v1, Lco/ronash/pushe/e/l;

    const-string/jumbo v2, "TABLET"

    const-string/jumbo v3, "T"

    invoke-direct {v1, v2, v4, v3}, Lco/ronash/pushe/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lco/ronash/pushe/e/l;->b:Lco/ronash/pushe/e/l;

    new-instance v1, Lco/ronash/pushe/e/l;

    const-string/jumbo v2, "BROWSER"

    const-string/jumbo v3, "B"

    invoke-direct {v1, v2, v5, v3}, Lco/ronash/pushe/e/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lco/ronash/pushe/e/l;->c:Lco/ronash/pushe/e/l;

    const/4 v1, 0x3

    new-array v1, v1, [Lco/ronash/pushe/e/l;

    sget-object v2, Lco/ronash/pushe/e/l;->a:Lco/ronash/pushe/e/l;

    aput-object v2, v1, v0

    sget-object v2, Lco/ronash/pushe/e/l;->b:Lco/ronash/pushe/e/l;

    aput-object v2, v1, v4

    sget-object v2, Lco/ronash/pushe/e/l;->c:Lco/ronash/pushe/e/l;

    aput-object v2, v1, v5

    sput-object v1, Lco/ronash/pushe/e/l;->f:[Lco/ronash/pushe/e/l;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lco/ronash/pushe/e/l;->d:Ljava/util/Map;

    invoke-static {}, Lco/ronash/pushe/e/l;->values()[Lco/ronash/pushe/e/l;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lco/ronash/pushe/e/l;->d:Ljava/util/Map;

    invoke-virtual {v3}, Lco/ronash/pushe/e/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lco/ronash/pushe/e/l;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/e/l;
    .locals 1

    const-class v0, Lco/ronash/pushe/e/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/e/l;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/e/l;
    .locals 1

    sget-object v0, Lco/ronash/pushe/e/l;->f:[Lco/ronash/pushe/e/l;

    invoke-virtual {v0}, [Lco/ronash/pushe/e/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/e/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/e/l;->e:Ljava/lang/String;

    return-object v0
.end method
