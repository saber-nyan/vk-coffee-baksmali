.class public Lcom/vkcoffee/android/ui/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# instance fields
.field private final mBitmapRect:Landroid/graphics/RectF;

.field private mBorderRect:Landroid/graphics/RectF;

.field private mInnerRadius:I

.field private mOnBoundsChangeCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private final mShader:Landroid/graphics/BitmapShader;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 23
    iput v2, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mRadius:I

    .line 24
    iput v2, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mInnerRadius:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mOnBoundsChangeCalled:Z

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mInnerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mInnerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    iget v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mRadius:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mInnerRadius:I

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedDrawable;->invalidateSelf()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mOnBoundsChangeCalled:Z

    .line 47
    return-void

    .line 40
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mRadius:I

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mOnBoundsChangeCalled:Z

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/RoundedDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mOnBoundsChangeCalled:Z

    .line 56
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 81
    return-void
.end method

.method public setRadius(I)Lcom/vkcoffee/android/ui/RoundedDrawable;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 89
    if-ltz p1, :cond_0

    .line 90
    iput p1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mRadius:I

    .line 91
    iput p1, p0, Lcom/vkcoffee/android/ui/RoundedDrawable;->mInnerRadius:I

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedDrawable;->invalidateSelf()V

    .line 94
    :cond_0
    return-object p0
.end method
