.class Lcom/a/a/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a;-><init>(Lcom/a/a/b;)V

    sput-object v0, Lcom/a/a/i;->a:Lcom/a/a/a;

    return-void
.end method

.method static synthetic a()Lcom/a/a/a;
    .locals 1

    sget-object v0, Lcom/a/a/i;->a:Lcom/a/a/a;

    return-object v0
.end method
