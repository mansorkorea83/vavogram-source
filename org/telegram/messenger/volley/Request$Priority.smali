.class public final enum Lorg/telegram/messenger/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/telegram/messenger/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/messenger/volley/Request$Priority;

.field public static final enum HIGH:Lorg/telegram/messenger/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lorg/telegram/messenger/volley/Request$Priority;

.field public static final enum LOW:Lorg/telegram/messenger/volley/Request$Priority;

.field public static final enum NORMAL:Lorg/telegram/messenger/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/telegram/messenger/volley/Request$Priority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/volley/Request$Priority;->LOW:Lorg/telegram/messenger/volley/Request$Priority;

    new-instance v0, Lorg/telegram/messenger/volley/Request$Priority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/volley/Request$Priority;->NORMAL:Lorg/telegram/messenger/volley/Request$Priority;

    new-instance v0, Lorg/telegram/messenger/volley/Request$Priority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/volley/Request$Priority;->HIGH:Lorg/telegram/messenger/volley/Request$Priority;

    new-instance v0, Lorg/telegram/messenger/volley/Request$Priority;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/volley/Request$Priority;->IMMEDIATE:Lorg/telegram/messenger/volley/Request$Priority;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/messenger/volley/Request$Priority;

    sget-object v1, Lorg/telegram/messenger/volley/Request$Priority;->LOW:Lorg/telegram/messenger/volley/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/volley/Request$Priority;->NORMAL:Lorg/telegram/messenger/volley/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lorg/telegram/messenger/volley/Request$Priority;->HIGH:Lorg/telegram/messenger/volley/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lorg/telegram/messenger/volley/Request$Priority;->IMMEDIATE:Lorg/telegram/messenger/volley/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lorg/telegram/messenger/volley/Request$Priority;->$VALUES:[Lorg/telegram/messenger/volley/Request$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/messenger/volley/Request$Priority;
    .locals 1

    const-class v0, Lorg/telegram/messenger/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/volley/Request$Priority;

    return-object v0
.end method

.method public static values()[Lorg/telegram/messenger/volley/Request$Priority;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/volley/Request$Priority;->$VALUES:[Lorg/telegram/messenger/volley/Request$Priority;

    invoke-virtual {v0}, [Lorg/telegram/messenger/volley/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/volley/Request$Priority;

    return-object v0
.end method
