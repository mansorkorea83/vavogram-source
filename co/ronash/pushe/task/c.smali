.class public final enum Lco/ronash/pushe/task/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/task/c;

.field public static final enum b:Lco/ronash/pushe/task/c;

.field public static final enum c:Lco/ronash/pushe/task/c;

.field private static final synthetic d:[Lco/ronash/pushe/task/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/ronash/pushe/task/c;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lco/ronash/pushe/task/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    new-instance v0, Lco/ronash/pushe/task/c;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lco/ronash/pushe/task/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    new-instance v0, Lco/ronash/pushe/task/c;

    const-string/jumbo v1, "RESCHEDULE"

    invoke-direct {v0, v1, v4}, Lco/ronash/pushe/task/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lco/ronash/pushe/task/c;

    sget-object v1, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    aput-object v1, v0, v2

    sget-object v1, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    aput-object v1, v0, v3

    sget-object v1, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    aput-object v1, v0, v4

    sput-object v0, Lco/ronash/pushe/task/c;->d:[Lco/ronash/pushe/task/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/task/c;
    .locals 1

    const-class v0, Lco/ronash/pushe/task/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/c;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/task/c;
    .locals 1

    sget-object v0, Lco/ronash/pushe/task/c;->d:[Lco/ronash/pushe/task/c;

    invoke-virtual {v0}, [Lco/ronash/pushe/task/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/task/c;

    return-object v0
.end method
