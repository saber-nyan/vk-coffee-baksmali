.class public Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedCornersBitmapDrawable.java"


# static fields
.field public static final CORNER_BL:I = 0x4

.field public static final CORNER_BR:I = 0x8

.field public static final CORNER_TL:I = 0x1

.field public static final CORNER_TR:I = 0x2


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapBounds:Landroid/graphics/RectF;

.field private cornerRadius:I

.field private corners:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private tmpRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I
    .param p3, "corners"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 41
    iput p2, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    .line 42
    iput p3, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->corners:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->paint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    .line 45
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method private updatePath()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 72
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 73
    .local v3, "l":I
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 74
    .local v6, "t":I
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 75
    .local v4, "r":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 76
    .local v0, "b":I
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 77
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 78
    iget v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->corners:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 79
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v3

    iget v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 80
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v6

    iget v10, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    add-int/2addr v10, v3

    int-to-float v10, v10

    int-to-float v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 84
    :goto_0
    iget v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->corners:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 85
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    iget v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    int-to-float v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v6

    int-to-float v10, v4

    iget v11, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    add-int/2addr v11, v6

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 90
    :goto_1
    iget v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->corners:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 91
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v4

    iget v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v0

    iget v10, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    sub-int v10, v4, v10

    int-to-float v10, v10

    int-to-float v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 96
    :goto_2
    iget v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->corners:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 97
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    iget v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    add-int/2addr v8, v3

    int-to-float v8, v8

    int-to-float v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v0

    int-to-float v10, v3

    iget v11, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->cornerRadius:I

    sub-int v11, v0, v11

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 102
    :goto_3
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 103
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 104
    .local v5, "sratio":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 105
    .local v2, "dratio":F
    cmpg-float v7, v5, v2

    if-gez v7, :cond_4

    .line 106
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v12, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v13

    invoke-virtual {v7, v12, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 112
    :goto_4
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 113
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v12, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 115
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 116
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->invalidateSelf()V

    .line 117
    return-void

    .line 82
    .end local v2    # "dratio":F
    .end local v5    # "sratio":F
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_0

    .line 88
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    .line 94
    :cond_2
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v4

    int-to-float v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    .line 100
    :cond_3
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    .line 109
    .restart local v2    # "dratio":F
    .restart local v5    # "sratio":F
    :cond_4
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v7, v12, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v7, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v13

    invoke-virtual {v7, v8, v12}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 56
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;->updatePath()V

    .line 68
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 122
    return-void
.end method
