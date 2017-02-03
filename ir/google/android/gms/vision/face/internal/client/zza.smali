.class public Lcom/google/android/gms/vision/face/internal/client/zza;
.super Lcom/google/android/gms/vision/internal/client/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/internal/client/zza",
        "<",
        "Lcom/google/android/gms/vision/face/internal/client/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field private final aLf:Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;)V
    .locals 1

    const-string/jumbo v0, "FaceNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/vision/internal/client/zza;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/vision/face/internal/client/zza;->aLf:Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzclt()Ljava/lang/Object;

    return-void
.end method

.method private zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)Lcom/google/android/gms/vision/face/Face;
    .locals 11

    new-instance v0, Lcom/google/android/gms/vision/face/Face;

    iget v1, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->id:I

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerX:F

    iget v4, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerY:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->width:F

    iget v4, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->height:F

    iget v5, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLg:F

    iget v6, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLh:F

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzb(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v7

    iget v8, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLj:F

    iget v9, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLk:F

    iget v10, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLl:F

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/vision/face/Face;-><init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;)Lcom/google/android/gms/vision/face/Landmark;
    .locals 4

    new-instance v0, Lcom/google/android/gms/vision/face/Landmark;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->x:F

    iget v3, p1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, p1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->type:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/face/Landmark;-><init>(Landroid/graphics/PointF;I)V

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)[Lcom/google/android/gms/vision/face/Landmark;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLi:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    if-nez v2, :cond_0

    new-array v0, v0, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v2

    new-array v1, v1, [Lcom/google/android/gms/vision/face/Landmark;

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/vision/face/internal/client/zza;->zza(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;)Lcom/google/android/gms/vision/face/Landmark;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public zzabr(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzclt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zzd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/vision/face/internal/client/zzd;->zzabr(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FaceNativeHandle"

    const-string/jumbo v3, "Could not call native face detector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/internal/zzsu;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/internal/zzsu$zza;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzc(Lcom/google/android/gms/internal/zzsu;Landroid/content/Context;)Lcom/google/android/gms/vision/face/internal/client/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Ljava/nio/ByteBuffer;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/face/Face;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/google/android/gms/vision/face/Face;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzclt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zzd;

    invoke-interface {v0, v2, p2}, Lcom/google/android/gms/vision/face/internal/client/zzd;->zzc(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/vision/internal/client/FrameMetadataParcel;)[Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    array-length v0, v3

    new-array v2, v0, [Lcom/google/android/gms/vision/face/Face;

    move v0, v1

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_1

    aget-object v1, v3, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/vision/face/internal/client/zza;->zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;)Lcom/google/android/gms/vision/face/Face;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FaceNativeHandle"

    const-string/jumbo v3, "Could not call native face detector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v1, [Lcom/google/android/gms/vision/face/Face;

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzsu;Landroid/content/Context;)Lcom/google/android/gms/vision/face/internal/client/zzd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/internal/zzsu$zza;
        }
    .end annotation

    const-string/jumbo v0, "com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsu;->zzjd(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/vision/face/internal/client/zze$zza;->zzlm(Landroid/os/IBinder;)Lcom/google/android/gms/vision/face/internal/client/zze;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/zza;->aLf:Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/vision/face/internal/client/zze;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;)Lcom/google/android/gms/vision/face/internal/client/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzclq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zza;->zzclt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/internal/client/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/vision/face/internal/client/zzd;->zzclr()V

    return-void
.end method
