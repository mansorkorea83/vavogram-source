.class public abstract Lcom/google/android/gms/common/api/ResultTransform;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "S::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TS;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzrk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzrk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p1
.end method

.method public abstract onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TS;>;"
        }
    .end annotation
.end method