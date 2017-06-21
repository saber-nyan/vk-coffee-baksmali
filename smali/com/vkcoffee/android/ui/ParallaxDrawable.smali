.class public Lcom/vkcoffee/android/ui/ParallaxDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ParallaxDrawable.java"


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private cornerRadiuses:[I

.field private offset:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private shader:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->offset:F

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 45
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->bmp:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ParallaxDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 47
    .local v0, "bnds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 48
    .local v1, "h":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 49
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 50
    int-to-double v6, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v4, v3, v6

    .line 53
    .local v4, "wd":I
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iget v8, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->offset:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v5, v6, v7

    .line 54
    .local v5, "x":I
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 56
    int-to-float v6, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v6, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 58
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    if-nez v6, :cond_1

    .line 59
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    .line 60
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v8, 0x8

    new-array v8, v8, [F

    iget-object v9, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v9, v9, v10

    int-to-float v9, v9

    aput v9, v8, v10

    iget-object v9, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v9, v9, v10

    int-to-float v9, v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v9, v9, v11

    int-to-float v9, v9

    aput v9, v8, v12

    iget-object v9, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v9, v9, v11

    int-to-float v9, v9

    aput v9, v8, v13

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v10, v10, v12

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v10, v10, v12

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v10, v10, v13

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    aget v10, v10, v13

    int-to-float v10, v10

    aput v10, v8, v9

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 62
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    .end local v0    # "bnds":Landroid/graphics/Rect;
    .end local v1    # "h":I
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "w":I
    .end local v4    # "wd":I
    .end local v5    # "x":I
    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 91
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->bmp:Landroid/graphics/Bitmap;

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->bmp:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    .line 79
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    .line 74
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 97
    return-void
.end method

.method public setCornersRadius(IIII)V
    .locals 2
    .param p1, "topLeft"    # I
    .param p2, "topRight"    # I
    .param p3, "bottomLeft"    # I
    .param p4, "bottomRight"    # I

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->cornerRadiuses:[I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->path:Landroid/graphics/Path;

    .line 69
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "off"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/vkcoffee/android/ui/ParallaxDrawable;->offset:F

    .line 41
    return-void
.end method
