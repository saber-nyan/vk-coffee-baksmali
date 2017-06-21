.class public final Lcom/google/android/gms/identity/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

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

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/identity/R$styleable;->AdsAttrs:[I

    .line 211
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/identity/R$styleable;->LoadingImageView:[I

    .line 215
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/identity/R$styleable;->MapAttrs:[I

    .line 233
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/identity/R$styleable;->SignInButton:[I

    return-void

    .line 207
    :array_0
    .array-data 4
        0x7f010030
        0x7f010031
        0x7f010032
    .end array-data

    .line 211
    :array_1
    .array-data 4
        0x7f01008d
        0x7f01008e
        0x7f01008f
    .end array-data

    .line 215
    :array_2
    .array-data 4
        0x7f010090
        0x7f010091
        0x7f010092
        0x7f010093
        0x7f010094
        0x7f010095
        0x7f010096
        0x7f010097
        0x7f010098
        0x7f010099
        0x7f01009a
        0x7f01009b
        0x7f01009c
        0x7f01009d
        0x7f01009e
        0x7f01009f
        0x7f0100a0
    .end array-data

    .line 233
    :array_3
    .array-data 4
        0x7f010107
        0x7f010108
        0x7f010109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
