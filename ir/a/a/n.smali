.class Lcom/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/a/a/a;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/a/a/a;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/n;->a:Lcom/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/a/n;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p3, p0, Lcom/a/a/n;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lcom/a/a/j;

    sget-object v1, Lcom/a/a/k;->a:Lcom/a/a/k;

    invoke-direct {v0, p2, v1}, Lcom/a/a/j;-><init>(Ljava/lang/Throwable;Lcom/a/a/k;)V

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/a;->c(Lcom/a/a/a;)Lcom/a/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/a;->c(Lcom/a/a/a;)Lcom/a/a/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/l;->a(Lcom/a/a/j;)Lcom/a/a/j;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/a/a/g;->b()Lcom/a/a/g;

    move-result-object v1

    new-instance v2, Lcom/a/a/m;

    invoke-direct {v2, v0}, Lcom/a/a/m;-><init>(Lcom/a/a/j;)V

    invoke-virtual {v1, v2}, Lcom/a/a/g;->a(Lcom/a/a/m;)V

    :goto_0
    iget-object v0, p0, Lcom/a/a/n;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const-string/jumbo v0, "Sentry"

    const-string/jumbo v1, "SentryEventBuilder in uncaughtException is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
