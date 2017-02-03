.class public final enum Lco/ronash/pushe/d/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lco/ronash/pushe/d/b;

.field public static final enum b:Lco/ronash/pushe/d/b;

.field public static final enum c:Lco/ronash/pushe/d/b;

.field private static final synthetic e:[Lco/ronash/pushe/d/b;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lco/ronash/pushe/d/b;

    const-string/jumbo v1, "DB_TASK_TYPE_NONE_NETWORK"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v2}, Lco/ronash/pushe/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/ronash/pushe/d/b;->a:Lco/ronash/pushe/d/b;

    new-instance v0, Lco/ronash/pushe/d/b;

    const-string/jumbo v1, "DB_TASK_TYPE_NETWORK"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v4, v2}, Lco/ronash/pushe/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/ronash/pushe/d/b;->b:Lco/ronash/pushe/d/b;

    new-instance v0, Lco/ronash/pushe/d/b;

    const-string/jumbo v1, "DB_TASK_TYPE_PENDING"

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v5, v2}, Lco/ronash/pushe/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/ronash/pushe/d/b;->c:Lco/ronash/pushe/d/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lco/ronash/pushe/d/b;

    sget-object v1, Lco/ronash/pushe/d/b;->a:Lco/ronash/pushe/d/b;

    aput-object v1, v0, v3

    sget-object v1, Lco/ronash/pushe/d/b;->b:Lco/ronash/pushe/d/b;

    aput-object v1, v0, v4

    sget-object v1, Lco/ronash/pushe/d/b;->c:Lco/ronash/pushe/d/b;

    aput-object v1, v0, v5

    sput-object v0, Lco/ronash/pushe/d/b;->e:[Lco/ronash/pushe/d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lco/ronash/pushe/d/b;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/ronash/pushe/d/b;
    .locals 1

    const-class v0, Lco/ronash/pushe/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/d/b;

    return-object v0
.end method

.method public static values()[Lco/ronash/pushe/d/b;
    .locals 1

    sget-object v0, Lco/ronash/pushe/d/b;->e:[Lco/ronash/pushe/d/b;

    invoke-virtual {v0}, [Lco/ronash/pushe/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/ronash/pushe/d/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lco/ronash/pushe/d/b;->d:I

    return v0
.end method
