.class public Lcom/vk/attachpicker/crop/CropUtils;
.super Ljava/lang/Object;
.source "CropUtils.java"


# static fields
.field private static final PAINT_FILTER_BITMAP:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/crop/CropUtils;->PAINT_FILTER_BITMAP:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySquareMatrixFixed(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/CropAreaProvider;Landroid/graphics/Matrix;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "cropAreaProvider"    # Lcom/vk/attachpicker/crop/CropAreaProvider;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "maxWidth"    # I

    .prologue
    .line 12
    int-to-float v6, p3

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropAspectRatio()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 13
    .local v2, "maxHeight":I
    int-to-float v6, p3

    int-to-float v7, v2

    div-float v0, v6, v7

    .line 15
    .local v0, "ar":F
    if-le v2, p3, :cond_0

    .line 16
    move v4, p3

    .line 17
    .local v4, "tmpMaxWidth":I
    int-to-float v6, p3

    mul-float/2addr v6, v0

    float-to-int p3, v6

    .line 18
    move v2, v4

    .line 21
    .end local v4    # "tmpMaxWidth":I
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 24
    .local v3, "target":Landroid/graphics/Bitmap;
    invoke-static {p2, p1, p3}, Lcom/vk/attachpicker/crop/CropUtils;->createCropMatrix(Landroid/graphics/Matrix;Lcom/vk/attachpicker/crop/CropAreaProvider;I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 26
    .local v5, "workingMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v6, Lcom/vk/attachpicker/crop/CropUtils;->PAINT_FILTER_BITMAP:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 28
    return-object v3
.end method

.method public static calculatePosition(FFFFFFF)Landroid/graphics/RectF;
    .locals 12
    .param p0, "cropAr"    # F
    .param p1, "measuredWidth"    # F
    .param p2, "measuredHeight"    # F
    .param p3, "leftSidePadding"    # F
    .param p4, "topSidePadding"    # F
    .param p5, "rightSidePadding"    # F
    .param p6, "bottomSidePadding"    # F

    .prologue
    .line 80
    sub-float v10, p1, p3

    sub-float v10, v10, p5

    sub-float v11, p2, p4

    sub-float v11, v11, p6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 82
    .local v3, "minSide":F
    sub-float v10, p1, p3

    sub-float v5, v10, p5

    .line 83
    .local v5, "w":F
    sub-float v10, p2, p4

    sub-float v2, v10, p6

    .line 84
    .local v2, "h":F
    div-float v4, v5, v2

    .line 85
    .local v4, "viewAr":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v5, v10

    add-float v0, p3, v10

    .line 86
    .local v0, "cx":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v2, v10

    add-float v1, p4, v10

    .line 91
    .local v1, "cy":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, p0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x38d1b717    # 1.0E-4f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 92
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v3, v10

    sub-float v6, v0, v10

    .line 93
    .local v6, "x0":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v3, v10

    sub-float v8, v1, v10

    .line 94
    .local v8, "y0":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v3, v10

    add-float v7, v0, v10

    .line 95
    .local v7, "x1":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v3, v10

    add-float v9, v1, v10

    .line 107
    .local v9, "y1":F
    :goto_0
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v6, v8, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v10

    .line 96
    .end local v6    # "x0":F
    .end local v7    # "x1":F
    .end local v8    # "y0":F
    .end local v9    # "y1":F
    :cond_0
    cmpl-float v10, p0, v4

    if-lez v10, :cond_1

    .line 97
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v5, v10

    sub-float v6, v0, v10

    .line 98
    .restart local v6    # "x0":F
    div-float v10, v5, p0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v8, v1, v10

    .line 99
    .restart local v8    # "y0":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v5, v10

    add-float v7, v0, v10

    .line 100
    .restart local v7    # "x1":F
    div-float v10, v5, p0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v9, v1, v10

    .restart local v9    # "y1":F
    goto :goto_0

    .line 102
    .end local v6    # "x0":F
    .end local v7    # "x1":F
    .end local v8    # "y0":F
    .end local v9    # "y1":F
    :cond_1
    mul-float v10, v2, p0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float v6, v0, v10

    .line 103
    .restart local v6    # "x0":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v2, v10

    sub-float v8, v1, v10

    .line 104
    .restart local v8    # "y0":F
    mul-float v10, v2, p0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v7, v0, v10

    .line 105
    .restart local v7    # "x1":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v2, v10

    add-float v9, v1, v10

    .restart local v9    # "y1":F
    goto :goto_0
.end method

.method public static convertGeometryStateForAreaSelection(Lcom/vk/attachpicker/crop/GeometryState;FFF)V
    .locals 2
    .param p0, "geometryState"    # Lcom/vk/attachpicker/crop/GeometryState;
    .param p1, "cropWidth"    # F
    .param p2, "x0"    # F
    .param p3, "y0"    # F

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p2, p3}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 69
    sget v0, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    div-float v0, p1, v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 70
    return-void
.end method

.method public static convertGeometryStateForCrop(Lcom/vk/attachpicker/crop/GeometryState;FFF)V
    .locals 2
    .param p0, "geometryState"    # Lcom/vk/attachpicker/crop/GeometryState;
    .param p1, "cropWidth"    # F
    .param p2, "x0"    # F
    .param p3, "y0"    # F

    .prologue
    const/4 v1, 0x0

    .line 63
    sget v0, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    div-float v0, p1, v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 65
    return-void
.end method

.method public static convertGeometryStateForPreview(Lcom/vk/attachpicker/crop/GeometryState;FFF)V
    .locals 3
    .param p0, "geometryState"    # Lcom/vk/attachpicker/crop/GeometryState;
    .param p1, "cropWidth"    # F
    .param p2, "x0"    # F
    .param p3, "y0"    # F

    .prologue
    const/4 v2, 0x0

    .line 73
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 74
    sget v0, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    div-float/2addr v0, p1

    invoke-virtual {p0, v0, v2, v2}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 75
    return-void
.end method

.method public static createCropAreaProvider(II)Lcom/vk/attachpicker/crop/CropAreaProvider;
    .locals 6
    .param p0, "cropWidth"    # I
    .param p1, "cropHeight"    # I

    .prologue
    .line 111
    div-int/lit8 v0, p0, 0x2

    int-to-float v2, v0

    .line 112
    .local v2, "centerX":F
    div-int/lit8 v0, p1, 0x2

    int-to-float v3, v0

    .line 113
    .local v3, "centerY":F
    int-to-float v0, p0

    int-to-float v4, p1

    div-float v1, v0, v4

    .line 115
    .local v1, "ar":F
    new-instance v0, Lcom/vk/attachpicker/crop/CropUtils$1;

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/crop/CropUtils$1;-><init>(FFFII)V

    return-object v0
.end method

.method public static createCropMatrix(Landroid/graphics/Matrix;Lcom/vk/attachpicker/crop/CropAreaProvider;I)Landroid/graphics/Matrix;
    .locals 5
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "cropAreaProvider"    # Lcom/vk/attachpicker/crop/CropAreaProvider;
    .param p2, "maxWidth"    # I

    .prologue
    .line 32
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 33
    .local v2, "workingMatrix":Landroid/graphics/Matrix;
    int-to-float v3, p2

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v4

    div-float v0, v3, v4

    .line 34
    .local v0, "scale":F
    int-to-float v3, p2

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 35
    .local v1, "translate":F
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 36
    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 37
    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getX0()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v0

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getY0()F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 38
    return-object v2
.end method

.method public static createDrawingMatrix(Landroid/graphics/Matrix;FFLandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 5
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "matrixMaxWidth"    # F
    .param p2, "maxWidth"    # F
    .param p3, "drawingRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 42
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 44
    .local v2, "workingMatrix":Landroid/graphics/Matrix;
    div-float v0, p2, p1

    .line 45
    .local v0, "baseScale":F
    invoke-virtual {v2, v0, v0, v4, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 47
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v1, v3, p2

    .line 48
    .local v1, "scale":F
    invoke-virtual {v2, v1, v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 50
    return-object v2
.end method

.method public static createScaleMatrix(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "previewWidth"    # F
    .param p2, "maxWidth"    # F

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 56
    .local v1, "workingMatrix":Landroid/graphics/Matrix;
    div-float v0, p2, p1

    .line 57
    .local v0, "baseScale":F
    invoke-virtual {v1, v0, v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 59
    return-object v1
.end method
