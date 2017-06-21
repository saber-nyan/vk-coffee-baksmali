.class Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;
.super Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourcesDrawable"
.end annotation


# instance fields
.field final halfHeight:I

.field normal:Landroid/graphics/drawable/Drawable;

.field final paint:Landroid/graphics/Paint;

.field selected:Landroid/graphics/drawable/Drawable;

.field final verticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;-><init>()V

    .line 199
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->paint:Landroid/graphics/Paint;

    .line 206
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->selected:Landroid/graphics/drawable/Drawable;

    .line 209
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->verticalPadding:I

    .line 210
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->selected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->halfHeight:I

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->count:I

    if-ge v0, v1, :cond_1

    .line 233
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->current:I

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->selected:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->halfHeight:I

    neg-int v3, v3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->selected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->halfHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->selected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->halfHeight:I

    neg-int v3, v3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->halfHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->verticalPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->count:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 252
    return-void
.end method

.method setCurrentPage(IZ)V
    .locals 0
    .param p1, "currentPage"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 222
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->current:I

    .line 223
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->invalidateSelf()V

    .line 224
    return-void
.end method

.method setPageCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->count:I

    .line 217
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;->invalidateSelf()V

    .line 218
    return-void
.end method
