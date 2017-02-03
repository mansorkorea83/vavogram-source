.class public Lcom/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/a/a/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/a/a/j;->a(Lcom/a/a/j;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/m;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/m;->b:Ljava/util/UUID;

    return-void
.end method

.method static synthetic a(Lcom/a/a/m;)Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->b:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/a/a/m;

    iget-object v0, p0, Lcom/a/a/m;->b:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/a/a/m;->b:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/m;->b:Ljava/util/UUID;

    iget-object v1, p1, Lcom/a/a/m;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
