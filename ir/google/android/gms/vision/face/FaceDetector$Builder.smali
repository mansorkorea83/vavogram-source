.class public Lcom/google/android/gms/vision/face/FaceDetector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/face/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Hh:I

.field private aKZ:I

.field private aLa:Z

.field private aLb:I

.field private aLc:Z

.field private aLd:F

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aKZ:I

    iput-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLa:Z

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLb:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLc:Z

    iput v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->Hh:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLd:F

    iput-object p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/face/FaceDetector;
    .locals 3

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;-><init>()V

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->Hh:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->mode:I

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aKZ:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLm:I

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLb:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLn:I

    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLa:Z

    iput-boolean v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLo:Z

    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLc:Z

    iput-boolean v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLp:Z

    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLd:F

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLq:F

    new-instance v1, Lcom/google/android/gms/vision/face/internal/client/zza;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/vision/face/internal/client/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;)V

    new-instance v0, Lcom/google/android/gms/vision/face/FaceDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector;-><init>(Lcom/google/android/gms/vision/face/internal/client/zza;Lcom/google/android/gms/vision/face/FaceDetector$1;)V

    return-object v0
.end method

.method public setClassificationType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid classification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLb:I

    return-object p0
.end method

.method public setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid landmark type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aKZ:I

    return-object p0
.end method

.method public setMinFaceSize(F)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid proportional face size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLd:F

    return-object p0
.end method

.method public setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->Hh:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setProminentFaceOnly(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLa:Z

    return-object p0
.end method

.method public setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->aLc:Z

    return-object p0
.end method
