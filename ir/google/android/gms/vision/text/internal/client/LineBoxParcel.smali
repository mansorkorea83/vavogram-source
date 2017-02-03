.class public Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/text/internal/client/zzd;


# instance fields
.field public final aLF:[Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;

.field public final aLG:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

.field public final aLH:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

.field public final aLI:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

.field public final aLJ:Ljava/lang/String;

.field public final aLK:F

.field public final aLL:I

.field public final aLM:Z

.field public final aLN:I

.field public final aLO:I

.field public final aLz:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/text/internal/client/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/vision/text/internal/client/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->CREATOR:Lcom/google/android/gms/vision/text/internal/client/zzd;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLF:[Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;

    iput-object p3, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLG:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

    iput-object p4, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLH:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

    iput-object p5, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLI:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

    iput-object p6, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLJ:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLK:F

    iput-object p8, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLz:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLL:I

    iput-boolean p10, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLM:Z

    iput p11, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLN:I

    iput p12, p0, Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;->aLO:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/text/internal/client/zzd;->zza(Lcom/google/android/gms/vision/text/internal/client/LineBoxParcel;Landroid/os/Parcel;I)V

    return-void
.end method
