.class public final Lcom/google/android/gms/internal/zzapb;
.super Ljava/lang/Object;


# instance fields
.field private final bkY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaod",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzaod",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapb;->bkY:Ljava/util/Map;

    return-void
.end method

.method private zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzapg",
            "<TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzapb$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$7;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzapb$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzapb$8;-><init>(Lcom/google/android/gms/internal/zzapb;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzapb$9;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$9;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzapb$10;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$10;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzapb$11;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$11;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzapb$12;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$12;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapx;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzapx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzapb$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$2;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzapb$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapb$3;-><init>(Lcom/google/android/gms/internal/zzapb;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzapg",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapb$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzapb$4;-><init>(Lcom/google/android/gms/internal/zzapb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/zzapg",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzapb$6;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzapb$6;-><init>(Lcom/google/android/gms/internal/zzapb;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb;->bkY:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzapx;)Lcom/google/android/gms/internal/zzapg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzapx",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzapg",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapx;->bz()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapx;->by()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb;->bkY:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaod;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzapb$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzapb$1;-><init>(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaod;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb;->bkY:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaod;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzapb$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzapb$5;-><init>(Lcom/google/android/gms/internal/zzapb;Lcom/google/android/gms/internal/zzaod;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzapb;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzapb;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/zzapb;->zzd(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzapg;

    move-result-object v0

    goto :goto_0
.end method
