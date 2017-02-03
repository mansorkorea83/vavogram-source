.class public Lcom/google/android/gms/vision/text/Element;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field private aLu:Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/text/Element;->aLu:Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;

    return-void
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/vision/text/zza;->zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Element;->aLu:Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;

    iget-object v0, v0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLG:Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;

    invoke-static {v0}, Lcom/google/android/gms/vision/text/zza;->zza(Lcom/google/android/gms/vision/text/internal/client/BoundingBoxParcel;)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Element;->aLu:Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;

    iget-object v0, v0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLz:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Element;->aLu:Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;

    iget-object v0, v0, Lcom/google/android/gms/vision/text/internal/client/WordBoxParcel;->aLJ:Ljava/lang/String;

    return-object v0
.end method
