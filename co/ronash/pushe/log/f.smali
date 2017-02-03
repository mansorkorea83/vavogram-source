.class public final enum Lco/ronash/pushe/log/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/log/f;

.field public static final enum b:Lco/ronash/pushe/log/f;

.field public static final enum c:Lco/ronash/pushe/log/f;

.field public static final enum d:Lco/ronash/pushe/log/f;

.field public static final enum e:Lco/ronash/pushe/log/f;

.field private static final synthetic f:[Lco/ronash/pushe/log/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/ronash/pushe/log/f;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lco/ronash/pushe/log/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/log/f;->a:Lco/ronash/pushe/log/f;

    new-instance v0, Lco/ronash/pushe/log/f;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v3}, Lco/ronash/pushe/log/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/log/f;->b:Lco/ronash/pushe/log/f;

    new-instance v0, Lco/ronash/pushe/log/f;

    const-string/jumbo v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lco/ronash/pushe/log/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;

    new-instance v0, Lco/ronash/pushe/log/f;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lco/ronash/pushe/log/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    new-instance v0, Lco/ronash/pushe/log/f;

    const-string/jumbo v1, "FATAL"

    invoke-direct {v0, v1, v6}, Lco/ronash/pushe/log/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/log/f;->e:Lco/ronash/pushe/log/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lco/ronash/pushe/log/f;

    sget-object v1, Lco/ronash/pushe/log/f;->a:Lco/ronash/pushe/log/f;

    aput-object v1, v0, v2

    sget-object v1, Lco/ronash/pushe/log/f;->b:Lco/ronash/pushe/log/f;

    aput-object v1, v0, v3

    sget-object v1, Lco/ronash/pushe/log/f;->c:Lco/ronash/pushe/log/f;

    aput-object v1, v0, v4

    sget-object v1, Lco/ronash/pushe/log/f;->d:Lco/ronash/pushe/log/f;

    aput-object v1, v0, v5

    sget-object v1, Lco/ronash/pushe/log/f;->e:Lco/ronash/pushe/log/f;

    aput-object v1, v0, v6

    sput-object v0, Lco/ronash/pushe/log/f;->f:[Lco/ronash/pushe/log/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/log/f;
    .locals 1

    const-class v0, Lco/ronash/pushe/log/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/log/f;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/log/f;
    .locals 1

    sget-object v0, Lco/ronash/pushe/log/f;->f:[Lco/ronash/pushe/log/f;

    invoke-virtual {v0}, [Lco/ronash/pushe/log/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/log/f;

    return-object v0
.end method
