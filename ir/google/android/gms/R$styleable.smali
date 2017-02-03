.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I = null

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I = null

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x12

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x11

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x15

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x16

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0x13

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0x14

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I = null

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x52t 0x0t 0x1t 0x7ft
        0x53t 0x0t 0x1t 0x7ft
        0x54t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x55t 0x0t 0x1t 0x7ft
        0x56t 0x0t 0x1t 0x7ft
        0x57t 0x0t 0x1t 0x7ft
        0x58t 0x0t 0x1t 0x7ft
        0x59t 0x0t 0x1t 0x7ft
        0x5at 0x0t 0x1t 0x7ft
        0x5bt 0x0t 0x1t 0x7ft
        0x5ct 0x0t 0x1t 0x7ft
        0x5dt 0x0t 0x1t 0x7ft
        0x5et 0x0t 0x1t 0x7ft
        0x5ft 0x0t 0x1t 0x7ft
        0x60t 0x0t 0x1t 0x7ft
        0x61t 0x0t 0x1t 0x7ft
        0x62t 0x0t 0x1t 0x7ft
        0x63t 0x0t 0x1t 0x7ft
        0x64t 0x0t 0x1t 0x7ft
        0x65t 0x0t 0x1t 0x7ft
        0x66t 0x0t 0x1t 0x7ft
        0x67t 0x0t 0x1t 0x7ft
        0x68t 0x0t 0x1t 0x7ft
        0x69t 0x0t 0x1t 0x7ft
        0x6at 0x0t 0x1t 0x7ft
        0x6bt 0x0t 0x1t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x8ct 0x0t 0x1t 0x7ft
        0x8dt 0x0t 0x1t 0x7ft
        0x8et 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
