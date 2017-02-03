.class Lcom/a/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/g;-><init>(Lcom/a/a/b;)V

    sput-object v0, Lcom/a/a/h;->a:Lcom/a/a/g;

    return-void
.end method

.method static synthetic a()Lcom/a/a/g;
    .locals 1

    sget-object v0, Lcom/a/a/h;->a:Lcom/a/a/g;

    return-object v0
.end method
