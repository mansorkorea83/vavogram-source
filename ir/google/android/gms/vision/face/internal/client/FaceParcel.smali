.class public Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/face/internal/client/zzb;


# instance fields
.field public final aLg:F

.field public final aLh:F

.field public final aLi:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

.field public final aLj:F

.field public final aLk:F

.field public final aLl:F

.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final id:I

.field public final versionCode:I

.field public final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Lcom/google/android/gms/vision/face/internal/client/zzb;

    return-void
.end method

.method public constructor <init>(IIFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->id:I

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerX:F

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->centerY:F

    iput p5, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->width:F

    iput p6, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->height:F

    iput p7, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLg:F

    iput p8, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLh:F

    iput-object p9, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLi:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    iput p10, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLj:F

    iput p11, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLk:F

    iput p12, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->aLl:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/face/internal/client/zzb;->zza(Lcom/google/android/gms/vision/face/internal/client/FaceParcel;Landroid/os/Parcel;I)V

    return-void
.end method
