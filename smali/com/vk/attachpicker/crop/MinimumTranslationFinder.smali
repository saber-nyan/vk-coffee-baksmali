.class public Lcom/vk/attachpicker/crop/MinimumTranslationFinder;
.super Ljava/lang/Object;
.source "MinimumTranslationFinder.java"


# instance fields
.field private final cropRect:Landroid/graphics/RectF;

.field private final globalResult:Landroid/graphics/PointF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rawPoints:[F

.field private final rawResult:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawResult:[F

    return-void
.end method

.method private fillFromRaw([Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    aget-object v0, p1, v2

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 59
    aget-object v0, p1, v2

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget v1, v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 60
    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget v1, v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 61
    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget v1, v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 62
    aget-object v0, p1, v4

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 63
    aget-object v0, p1, v4

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 64
    aget-object v0, p1, v5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 65
    aget-object v0, p1, v5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 66
    return-void
.end method

.method private fillRaw([Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget-object v1, p1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v2

    .line 48
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget-object v1, p1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v3

    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget-object v1, p1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v4

    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    aget-object v1, p1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v5

    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v1, 0x4

    aget-object v2, p1, v4

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v1, 0x5

    aget-object v2, p1, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v1, 0x6

    aget-object v2, p1, v5

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    const/4 v1, 0x7

    aget-object v2, p1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    .line 55
    return-void
.end method

.method private static findMinimumTranslationVector([Landroid/graphics/PointF;FFFFLandroid/graphics/PointF;)V
    .locals 6
    .param p0, "polygon"    # [Landroid/graphics/PointF;
    .param p1, "cropWidth"    # F
    .param p2, "cropHeight"    # F
    .param p3, "cropX"    # F
    .param p4, "cropY"    # F
    .param p5, "result"    # Landroid/graphics/PointF;

    .prologue
    .line 71
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 72
    .local v1, "rectX0":F
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 73
    .local v3, "rectY0":F
    const/4 v2, 0x1

    .line 74
    .local v2, "rectX1":F
    const/4 v4, 0x1

    .line 75
    .local v4, "rectY1":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 76
    aget-object v5, p0, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_0

    .line 77
    aget-object v5, p0, v0

    iget v1, v5, Landroid/graphics/PointF;->x:F

    .line 79
    :cond_0
    aget-object v5, p0, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_1

    .line 80
    aget-object v5, p0, v0

    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 82
    :cond_1
    aget-object v5, p0, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_2

    .line 83
    aget-object v5, p0, v0

    iget v3, v5, Landroid/graphics/PointF;->y:F

    .line 85
    :cond_2
    aget-object v5, p0, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    .line 86
    aget-object v5, p0, v0

    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 75
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_4
    cmpg-float v5, p3, v1

    if-gez v5, :cond_5

    .line 90
    sub-float v5, v1, p3

    iput v5, p5, Landroid/graphics/PointF;->x:F

    .line 92
    :cond_5
    cmpg-float v5, p4, v3

    if-gez v5, :cond_6

    .line 93
    sub-float v5, v3, p4

    iput v5, p5, Landroid/graphics/PointF;->y:F

    .line 95
    :cond_6
    add-float v5, p3, p1

    cmpl-float v5, v5, v2

    if-lez v5, :cond_7

    .line 96
    sub-float v5, v2, p3

    sub-float/2addr v5, p1

    iput v5, p5, Landroid/graphics/PointF;->x:F

    .line 98
    :cond_7
    add-float v5, p4, p2

    cmpl-float v5, v5, v4

    if-lez v5, :cond_8

    .line 99
    sub-float v5, v4, p4

    sub-float/2addr v5, p2

    iput v5, p5, Landroid/graphics/PointF;->y:F

    .line 101
    :cond_8
    return-void
.end method


# virtual methods
.method public findMinTranslate([Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;
    .locals 9
    .param p1, "polygon"    # [Landroid/graphics/PointF;
    .param p2, "cropWidth"    # F
    .param p3, "cropHeight"    # F
    .param p4, "cropX"    # F
    .param p5, "cropY"    # F
    .param p6, "rotation"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 20
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 21
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 22
    iget-object v5, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->findMinimumTranslationVector([Landroid/graphics/PointF;FFFFLandroid/graphics/PointF;)V

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    add-float v1, p4, p2

    add-float v2, p5, p3

    invoke-virtual {v0, p4, p5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 26
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    neg-float v1, p6

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 29
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->fillRaw([Landroid/graphics/PointF;)V

    .line 30
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawPoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 31
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->fillFromRaw([Landroid/graphics/PointF;)V

    .line 32
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->cropRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->findMinimumTranslationVector([Landroid/graphics/PointF;FFFFLandroid/graphics/PointF;)V

    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawResult:[F

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v7

    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawResult:[F

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v8

    .line 38
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p6

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 39
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawResult:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawResult:[F

    aget v1, v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 41
    iget-object v0, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->globalResult:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->rawResult:[F

    aget v1, v1, v8

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method
