.class public Lcom/vk/attachpicker/widget/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bitmapHeight:I

.field private final bitmapWidth:I

.field private final cornerRadius:I

.field private final paint:Landroid/graphics/Paint;

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    iput p2, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->cornerRadius:I

    .line 26
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->rectF:Landroid/graphics/RectF;

    .line 27
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 30
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 31
    .local v0, "shader":Landroid/graphics/BitmapShader;
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmapWidth:I

    .line 35
    iget-object v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmapHeight:I

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->cornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->cornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 41
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RoundedDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmapWidth:I

    iget v1, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->bitmapHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 48
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RoundedDrawable;->invalidateSelf()V

    .line 56
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RoundedDrawable;->invalidateSelf()V

    .line 81
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 61
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RoundedDrawable;->invalidateSelf()V

    .line 93
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vk/attachpicker/widget/RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/RoundedDrawable;->invalidateSelf()V

    .line 87
    return-void
.end method
