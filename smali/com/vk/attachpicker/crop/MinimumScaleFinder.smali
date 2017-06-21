.class public Lcom/vk/attachpicker/crop/MinimumScaleFinder;
.super Ljava/lang/Object;
.source "MinimumScaleFinder.java"


# static fields
.field private static final SCALE_DIM:F = 10000.0f

.field private static final SCALE_DIM2:F = 5000.0f


# instance fields
.field private final cropBoxRect:[Landroid/graphics/PointF;

.field private final imageBoxPolygon:[Landroid/graphics/PointF;

.field private final rawImageBoxPolygon:[F

.field private final scaleWorkMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, v6, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    .line 18
    new-array v0, v6, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->scaleWorkMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private binarySearch(FFF)F
    .locals 8
    .param p1, "angleDeg"    # F
    .param p2, "imageWidth"    # F
    .param p3, "imageHeight"    # F

    .prologue
    const v7, 0x3a83126f    # 0.001f

    .line 79
    const/high16 v4, 0x3f800000    # 1.0f

    .line 80
    .local v4, "prevGoodScale":F
    const v2, 0x3a83126f    # 0.001f

    .line 81
    .local v2, "low":F
    const/high16 v0, 0x41a00000    # 20.0f

    .line 84
    .local v0, "high":F
    :cond_0
    :goto_0
    cmpg-float v5, v2, v0

    if-gez v5, :cond_1

    .line 85
    sub-float v5, v0, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v3, v2, v5

    .line 87
    .local v3, "mid":F
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->resetScaleImagePolygon(FFFF)V

    .line 89
    iget-object v5, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    invoke-static {v5, v6}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsRectangle([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result v1

    .line 90
    .local v1, "isGoodScale":Z
    sub-float v5, v4, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_2

    .line 91
    if-eqz v1, :cond_1

    .line 92
    move v4, v3

    .line 107
    .end local v1    # "isGoodScale":Z
    .end local v3    # "mid":F
    :cond_1
    return v4

    .line 96
    .restart local v1    # "isGoodScale":Z
    .restart local v3    # "mid":F
    :cond_2
    if-eqz v1, :cond_3

    .line 97
    move v0, v3

    .line 102
    :goto_1
    if-eqz v1, :cond_0

    .line 103
    move v4, v3

    goto :goto_0

    .line 99
    :cond_3
    add-float v2, v3, v7

    goto :goto_1
.end method

.method private fillScaleCropRect(FF)V
    .locals 7
    .param p1, "cropWidth"    # F
    .param p2, "cropHeight"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x459c4000    # 5000.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 30
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v4

    div-float v1, p1, v2

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 31
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v4

    div-float v1, p2, v2

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 32
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    div-float v1, p1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    div-float v1, p2, v2

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 34
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    div-float v1, p1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    div-float v1, p2, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    div-float v1, p1, v2

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    div-float v1, p2, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 38
    return-void
.end method

.method private resetScaleImagePolygon(FFFF)V
    .locals 8
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "imageWidth"    # F
    .param p4, "imageHeight"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x459c4000    # 5000.0f

    .line 41
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    div-float v1, p3, v4

    sub-float v1, v3, v1

    aput v1, v0, v5

    .line 42
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    div-float v1, p4, v4

    sub-float v1, v3, v1

    aput v1, v0, v6

    .line 43
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    div-float v1, p3, v4

    add-float/2addr v1, v3

    aput v1, v0, v7

    .line 44
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v1, 0x3

    div-float v2, p4, v4

    sub-float v2, v3, v2

    aput v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v1, 0x4

    div-float v2, p3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v1, 0x5

    div-float v2, p4, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v1, 0x6

    div-float v2, p3, v4

    sub-float v2, v3, v2

    aput v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v1, 0x7

    div-float v2, p4, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->scaleWorkMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->scaleWorkMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->scaleWorkMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->scaleWorkMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    aget v1, v1, v5

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 56
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    aget v1, v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    aget v1, v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 60
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 62
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->rawImageBoxPolygon:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 63
    return-void
.end method

.method private simpleSearch(FFF)F
    .locals 9
    .param p1, "angleDeg"    # F
    .param p2, "imageWidth"    # F
    .param p3, "imageHeight"    # F

    .prologue
    const v8, 0x3a83126f    # 0.001f

    const/high16 v7, 0x41a00000    # 20.0f

    const v6, 0x3dcccccd    # 0.1f

    const v5, 0x3c23d70a    # 0.01f

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "decStep":F
    const v2, 0x3a83126f    # 0.001f

    .local v2, "scale":F
    :goto_0
    cmpg-float v3, v2, v7

    if-gez v3, :cond_0

    .line 113
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->resetScaleImagePolygon(FFFF)V

    .line 114
    iget-object v3, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    invoke-static {v3, v4}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsRectangle([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_2

    .line 116
    sub-float v0, v2, v6

    .line 124
    :cond_0
    :goto_1
    move v1, v0

    .line 125
    .local v1, "hundStep":F
    move v2, v0

    :goto_2
    cmpg-float v3, v2, v7

    if-gez v3, :cond_1

    .line 126
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->resetScaleImagePolygon(FFFF)V

    .line 127
    iget-object v3, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    invoke-static {v3, v4}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsRectangle([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_4

    .line 129
    sub-float v1, v2, v5

    .line 137
    :cond_1
    :goto_3
    move v2, v1

    :goto_4
    cmpg-float v3, v2, v7

    if-gez v3, :cond_7

    .line 138
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->resetScaleImagePolygon(FFFF)V

    .line 139
    iget-object v3, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->imageBoxPolygon:[Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->cropBoxRect:[Landroid/graphics/PointF;

    invoke-static {v3, v4}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsRectangle([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 140
    add-float v3, v2, v8

    .line 144
    :goto_5
    return v3

    .line 118
    .end local v1    # "hundStep":F
    :cond_2
    move v0, v2

    .line 120
    goto :goto_1

    .line 112
    :cond_3
    add-float/2addr v2, v6

    goto :goto_0

    .line 131
    .restart local v1    # "hundStep":F
    :cond_4
    move v1, v2

    .line 133
    goto :goto_3

    .line 125
    :cond_5
    add-float/2addr v2, v5

    goto :goto_2

    .line 137
    :cond_6
    add-float/2addr v2, v8

    goto :goto_4

    .line 144
    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5
.end method


# virtual methods
.method public findMinimumScale(FFFZFF)F
    .locals 2
    .param p1, "angleDeg"    # F
    .param p2, "imageWidth"    # F
    .param p3, "imageHeight"    # F
    .param p4, "swapSides"    # Z
    .param p5, "cropWidth"    # F
    .param p6, "cropHeight"    # F

    .prologue
    .line 67
    invoke-direct {p0, p5, p6}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->fillScaleCropRect(FF)V

    .line 69
    if-eqz p4, :cond_0

    .line 70
    move v0, p2

    .line 71
    .local v0, "tmp":F
    move p2, p3

    .line 72
    move p3, v0

    .line 75
    .end local v0    # "tmp":F
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->simpleSearch(FFF)F

    move-result v1

    return v1
.end method
