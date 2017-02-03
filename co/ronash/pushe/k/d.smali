.class public Lco/ronash/pushe/k/d;
.super Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lco/ronash/pushe/k/d;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lco/ronash/pushe/k/d;->a(Lorg/json/JSONArray;)Lco/ronash/pushe/k/d;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lco/ronash/pushe/k/c;

    invoke-direct {v1, v0}, Lco/ronash/pushe/k/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Lco/ronash/pushe/k/d;
    .locals 4

    :try_start_0
    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lco/ronash/pushe/k/l;->a(Lorg/json/JSONObject;)Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lco/ronash/pushe/k/d;->a(Lorg/json/JSONArray;)Lco/ronash/pushe/k/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    new-instance v1, Lco/ronash/pushe/k/c;

    invoke-direct {v1, v0}, Lco/ronash/pushe/k/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lco/ronash/pushe/k/d;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILco/ronash/pushe/k/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/k/d;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/k/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lco/ronash/pushe/k/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Lco/ronash/pushe/k/l;
    .locals 1

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/k/l;

    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lco/ronash/pushe/k/d;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lco/ronash/pushe/k/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lco/ronash/pushe/k/d;

    if-eqz v3, :cond_0

    check-cast v0, Lco/ronash/pushe/k/d;

    invoke-virtual {v0}, Lco/ronash/pushe/k/d;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v3, v0, Lco/ronash/pushe/k/l;

    if-eqz v3, :cond_1

    check-cast v0, Lco/ronash/pushe/k/l;

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z

    return-void
.end method
