.class public Lco/ronash/pushe/log/handlers/MemoryLogHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/log/e;


# instance fields
.field private mLogMessages:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/log/handlers/MemoryLogHandler;->mLogMessages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLogMessages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/handlers/MemoryLogHandler;->mLogMessages:Ljava/util/List;

    return-object v0
.end method

.method public onLog(Lco/ronash/pushe/log/c;)V
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/log/handlers/MemoryLogHandler;->mLogMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
