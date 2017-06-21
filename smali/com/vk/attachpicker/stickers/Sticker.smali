.class public abstract Lcom/vk/attachpicker/stickers/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"


# instance fields
.field private final boundingBox:Landroid/graphics/RectF;

.field private canvasHeight:F

.field private canvasWidth:F

.field private final drawingRect:[F

.field private isInEditMode:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final matrixValues:[F

.field private final points:[Landroid/graphics/PointF;

.field private final tmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrixValues:[F

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->tmpMatrix:Landroid/graphics/Matrix;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->points:[Landroid/graphics/PointF;

    .line 24
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 25
    return-void
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 164
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private updatePosition()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 144
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 145
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getOriginalWidth()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getOriginalHeight()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 158
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 160
    return-void
.end method


# virtual methods
.method public copy()Lcom/vk/attachpicker/stickers/Sticker;
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/vk/attachpicker/stickers/TextSticker;

    if-ne v1, v2, :cond_0

    .line 30
    new-instance v0, Lcom/vk/attachpicker/stickers/TextSticker;

    move-object v1, p0

    check-cast v1, Lcom/vk/attachpicker/stickers/TextSticker;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/stickers/TextSticker;-><init>(Lcom/vk/attachpicker/stickers/TextSticker;)V

    .line 37
    .local v0, "sticker":Lcom/vk/attachpicker/stickers/Sticker;
    :goto_0
    iget v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasWidth:F

    iput v1, v0, Lcom/vk/attachpicker/stickers/Sticker;->canvasWidth:F

    .line 38
    iget v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasHeight:F

    iput v1, v0, Lcom/vk/attachpicker/stickers/Sticker;->canvasHeight:F

    .line 39
    iget-object v1, v0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 40
    invoke-direct {v0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 42
    return-object v0

    .line 31
    .end local v0    # "sticker":Lcom/vk/attachpicker/stickers/Sticker;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/vk/attachpicker/stickers/BitmapSticker;

    if-ne v1, v2, :cond_1

    .line 32
    new-instance v0, Lcom/vk/attachpicker/stickers/BitmapSticker;

    move-object v1, p0

    check-cast v1, Lcom/vk/attachpicker/stickers/BitmapSticker;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/stickers/BitmapSticker;-><init>(Lcom/vk/attachpicker/stickers/BitmapSticker;)V

    .restart local v0    # "sticker":Lcom/vk/attachpicker/stickers/Sticker;
    goto :goto_0

    .line 34
    .end local v0    # "sticker":Lcom/vk/attachpicker/stickers/Sticker;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "sticker":Lcom/vk/attachpicker/stickers/Sticker;
    goto :goto_0
.end method

.method public distance(FF)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getCenterX()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getCenterX()F

    move-result v1

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getCenterY()F

    move-result v1

    sub-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getCenterY()F

    move-result v2

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public abstract doDraw(Landroid/graphics/Canvas;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 103
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/stickers/Sticker;->doDraw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 106
    return-void
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public abstract getOriginalHeight()F
.end method

.method public abstract getOriginalWidth()F
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/stickers/Sticker;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/vk/attachpicker/stickers/Sticker;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "before"    # Landroid/graphics/Matrix;
    .param p2, "after"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 81
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 84
    iput v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasWidth:F

    .line 85
    iput v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasHeight:F

    .line 87
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 88
    return-void
.end method

.method public isCoordinatesInsideView(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->points:[Landroid/graphics/PointF;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 118
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->points:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 119
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->points:[Landroid/graphics/PointF;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 120
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->points:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->drawingRect:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->points:[Landroid/graphics/PointF;

    invoke-static {v0, p1, p2}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsPoint([Landroid/graphics/PointF;FF)Z

    move-result v0

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->isInEditMode:Z

    return v0
.end method

.method public rotateBy(FFF)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 75
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 76
    return-void
.end method

.method public scaleBy(FFF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/Sticker;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 69
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 71
    :cond_0
    return-void
.end method

.method public setCanvasDimension(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 91
    iget v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasWidth:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasHeight:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    cmpl-float v1, p2, v3

    if-lez v1, :cond_0

    .line 92
    iget v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasWidth:F

    div-float v1, p1, v1

    iget v2, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasHeight:F

    div-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 93
    .local v0, "scale":F
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 96
    .end local v0    # "scale":F
    :cond_0
    iput p1, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasWidth:F

    .line 97
    iput p2, p0, Lcom/vk/attachpicker/stickers/Sticker;->canvasHeight:F

    .line 98
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 99
    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0
    .param p1, "inEditMode"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vk/attachpicker/stickers/Sticker;->isInEditMode:Z

    .line 51
    return-void
.end method

.method public translateBy(FF)V
    .locals 1
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/Sticker;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;->updatePosition()V

    .line 64
    return-void
.end method
