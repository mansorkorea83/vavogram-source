.class public final enum Lcom/a/a/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/a/k;

.field public static final enum b:Lcom/a/a/k;

.field public static final enum c:Lcom/a/a/k;

.field public static final enum d:Lcom/a/a/k;

.field public static final enum e:Lcom/a/a/k;

.field private static final synthetic g:[Lcom/a/a/k;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/a/k;

    const-string/jumbo v1, "FATAL"

    const-string/jumbo v2, "fatal"

    invoke-direct {v0, v1, v3, v2}, Lcom/a/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/k;->a:Lcom/a/a/k;

    new-instance v0, Lcom/a/a/k;

    const-string/jumbo v1, "ERROR"

    const-string/jumbo v2, "error"

    invoke-direct {v0, v1, v4, v2}, Lcom/a/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/k;->b:Lcom/a/a/k;

    new-instance v0, Lcom/a/a/k;

    const-string/jumbo v1, "WARNING"

    const-string/jumbo v2, "warning"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/k;->c:Lcom/a/a/k;

    new-instance v0, Lcom/a/a/k;

    const-string/jumbo v1, "INFO"

    const-string/jumbo v2, "info"

    invoke-direct {v0, v1, v6, v2}, Lcom/a/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/k;->d:Lcom/a/a/k;

    new-instance v0, Lcom/a/a/k;

    const-string/jumbo v1, "DEBUG"

    const-string/jumbo v2, "debug"

    invoke-direct {v0, v1, v7, v2}, Lcom/a/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/a/k;->e:Lcom/a/a/k;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/k;

    sget-object v1, Lcom/a/a/k;->a:Lcom/a/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/k;->b:Lcom/a/a/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/k;->c:Lcom/a/a/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/k;->d:Lcom/a/a/k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/k;->e:Lcom/a/a/k;

    aput-object v1, v0, v7

    sput-object v0, Lcom/a/a/k;->g:[Lcom/a/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/a/a/k;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/a/a/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/k;
    .locals 1

    const-class v0, Lcom/a/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/k;

    return-object v0
.end method

.method public static values()[Lcom/a/a/k;
    .locals 1

    sget-object v0, Lcom/a/a/k;->g:[Lcom/a/a/k;

    invoke-virtual {v0}, [Lcom/a/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/k;

    return-object v0
.end method
