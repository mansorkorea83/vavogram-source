.class public Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/face/internal/client/zzc;


# instance fields
.field public aLm:I

.field public aLn:I

.field public aLo:Z

.field public aLp:Z

.field public aLq:F

.field public mode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->CREATOR:Lcom/google/android/gms/vision/face/internal/client/zzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->versionCode:I

    return-void
.end method

.method public constructor <init>(IIIIZZF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->mode:I

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLm:I

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLn:I

    iput-boolean p5, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLo:Z

    iput-boolean p6, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLp:Z

    iput p7, p0, Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;->aLq:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/face/internal/client/zzc;->zza(Lcom/google/android/gms/vision/face/internal/client/FaceSettingsParcel;Landroid/os/Parcel;I)V

    return-void
.end method
