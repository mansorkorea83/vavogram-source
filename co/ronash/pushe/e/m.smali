.class public final enum Lco/ronash/pushe/e/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/e/m;

.field public static final enum b:Lco/ronash/pushe/e/m;

.field private static c:Ljava/util/Map;

.field private static final synthetic f:[Lco/ronash/pushe/e/m;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lco/ronash/pushe/e/m;

    const-string/jumbo v2, "ANDROID"

    const-string/jumbo v3, "A"

    const-string/jumbo v4, "android"

    invoke-direct {v1, v2, v0, v3, v4}, Lco/ronash/pushe/e/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lco/ronash/pushe/e/m;->a:Lco/ronash/pushe/e/m;

    new-instance v1, Lco/ronash/pushe/e/m;

    const-string/jumbo v2, "IOS"

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "ios"

    invoke-direct {v1, v2, v5, v3, v4}, Lco/ronash/pushe/e/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lco/ronash/pushe/e/m;->b:Lco/ronash/pushe/e/m;

    const/4 v1, 0x2

    new-array v1, v1, [Lco/ronash/pushe/e/m;

    sget-object v2, Lco/ronash/pushe/e/m;->a:Lco/ronash/pushe/e/m;

    aput-object v2, v1, v0

    sget-object v2, Lco/ronash/pushe/e/m;->b:Lco/ronash/pushe/e/m;

    aput-object v2, v1, v5

    sput-object v1, Lco/ronash/pushe/e/m;->f:[Lco/ronash/pushe/e/m;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lco/ronash/pushe/e/m;->c:Ljava/util/Map;

    invoke-static {}, Lco/ronash/pushe/e/m;->values()[Lco/ronash/pushe/e/m;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lco/ronash/pushe/e/m;->c:Ljava/util/Map;

    invoke-virtual {v3}, Lco/ronash/pushe/e/m;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lco/ronash/pushe/e/m;->d:Ljava/lang/String;

    iput-object p4, p0, Lco/ronash/pushe/e/m;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/e/m;
    .locals 1

    const-class v0, Lco/ronash/pushe/e/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/e/m;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/e/m;
    .locals 1

    sget-object v0, Lco/ronash/pushe/e/m;->f:[Lco/ronash/pushe/e/m;

    invoke-virtual {v0}, [Lco/ronash/pushe/e/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/e/m;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/e/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/e/m;->e:Ljava/lang/String;

    return-object v0
.end method
