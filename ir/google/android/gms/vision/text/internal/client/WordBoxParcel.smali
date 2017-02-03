.class public Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/text/internal/client/zzi;


# instance fields
.field public final aLG:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

.field public final aLH:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

.field public final aLJ:Ljava/lang/String;

.field public final aLK:F

.field public final aLQ:[Lcom/google/android/gms/vision/text/internal/client/SymbolBoxParcel;

.field public final aLR:Z

.field public final aLz:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/text/internal/client/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/vision/text/internal/client/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->CREATOR:Lcom/google/android/gms/vision/text/internal/client/zzi;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/vision/text/internal/client/SymbolBoxParcel;Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLQ:[Lcom/google/android/gms/vision/text/internal/client/SymbolBoxParcel;

    iput-object p3, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLG:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

    iput-object p4, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLH:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

    iput-object p5, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLJ:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLK:F

    iput-object p7, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLz:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLR:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/text/internal/client/zzi;->zza(Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;Landroid/os/Parcel;I)V

    return-void
.end method
