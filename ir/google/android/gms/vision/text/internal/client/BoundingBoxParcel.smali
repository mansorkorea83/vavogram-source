.class public Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/text/internal/client/zza;


# instance fields
.field public final aLE:F

.field public final height:I

.field public final left:I

.field public final top:I

.field public final versionCode:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/text/internal/client/zza;

    invoke-direct {v0}, Lcom/google/android/gms/vision/text/internal/client/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->CREATOR:Lcom/google/android/gms/vision/text/internal/client/zza;

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->left:I

    iput p3, p0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->top:I

    iput p4, p0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->width:I

    iput p5, p0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->height:I

    iput p6, p0, Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;->aLE:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/text/internal/client/zza;->zza(Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;Landroid/os/Parcel;I)V

    return-void
.end method
