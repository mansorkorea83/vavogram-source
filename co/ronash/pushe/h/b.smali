.class public final enum Lco/ronash/pushe/h/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/h/b;

.field public static final enum b:Lco/ronash/pushe/h/b;

.field private static final synthetic c:[Lco/ronash/pushe/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/ronash/pushe/h/b;

    const-string/jumbo v1, "DOWNSTREAM"

    invoke-direct {v0, v1, v2}, Lco/ronash/pushe/h/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/h/b;->a:Lco/ronash/pushe/h/b;

    new-instance v0, Lco/ronash/pushe/h/b;

    const-string/jumbo v1, "UPSTREAM"

    invoke-direct {v0, v1, v3}, Lco/ronash/pushe/h/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lco/ronash/pushe/h/b;

    sget-object v1, Lco/ronash/pushe/h/b;->a:Lco/ronash/pushe/h/b;

    aput-object v1, v0, v2

    sget-object v1, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    aput-object v1, v0, v3

    sput-object v0, Lco/ronash/pushe/h/b;->c:[Lco/ronash/pushe/h/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/h/b;
    .locals 1

    const-class v0, Lco/ronash/pushe/h/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/b;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/h/b;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/b;->c:[Lco/ronash/pushe/h/b;

    invoke-virtual {v0}, [Lco/ronash/pushe/h/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/h/b;

    return-object v0
.end method
