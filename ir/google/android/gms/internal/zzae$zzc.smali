.class public final Lcom/google/android/gms/internal/zzae$zzc;
.super Lcom/google/android/gms/internal/zzare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzare",
        "<",
        "Lcom/google/android/gms/internal/zzae$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzfp:[B

.field public zzfq:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzare;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfp:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfq:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->bqE:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzard;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfp:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfp:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzard;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfq:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfq:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzard;->zza(I[B)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzard;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzark;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzae$zzc;->zzg(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzae$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzae$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzarc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfp:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfq:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method protected zzx()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzare;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfp:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfp:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzard;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfq:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzae$zzc;->zzfq:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzard;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
