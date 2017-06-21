.class public Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedImageView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/RoundedImageView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedDrawable"
.end annotation


# instance fields
.field protected bitmapHeight:I

.field protected bitmapWidth:I

.field protected final paint:Landroid/graphics/Paint;

.field protected rIV2:Lcom/vkcoffee/android/ui/RoundedImageView2;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "roundedImageView2"    # Lcom/vkcoffee/android/ui/RoundedImageView2;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 170
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rIV2:Lcom/vkcoffee/android/ui/RoundedImageView2;

    .line 172
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rectF:Landroid/graphics/RectF;

    .line 173
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 174
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 176
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 177
    .local v0, "shader":Landroid/graphics/BitmapShader;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->bitmapWidth:I

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->bitmapHeight:I

    .line 182
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rIV2:Lcom/vkcoffee/android/ui/RoundedImageView2;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 187
    .local v0, "corners":F
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 188
    return-void

    .line 186
    .end local v0    # "corners":F
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rIV2:Lcom/vkcoffee/android/ui/RoundedImageView2;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rectF:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/RoundedImageView2;->access$000(Lcom/vkcoffee/android/ui/RoundedImageView2;Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->bitmapWidth:I

    iget v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->bitmapHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 195
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->invalidateSelf()V

    .line 203
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->invalidateSelf()V

    .line 228
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 208
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->invalidateSelf()V

    .line 240
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;->invalidateSelf()V

    .line 234
    return-void
.end method
