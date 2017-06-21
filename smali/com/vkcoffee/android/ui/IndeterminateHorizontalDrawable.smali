.class public Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IndeterminateHorizontalDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private fgPaint:Landroid/graphics/Paint;

.field private maxOffset:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    const v1, -0x151413

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    const v1, -0xcc4a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->maxOffset:I

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v9, 0x41a00000    # 20.0f

    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    .line 35
    .local v7, "height":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v6, "b":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 38
    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 42
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    const/4 v8, -0x1

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x64

    if-ge v8, v0, :cond_0

    .line 44
    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 49
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->offset:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->offset:I

    .line 50
    iget v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->offset:I

    iget v1, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->maxOffset:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->offset:I

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->invalidateSelf()V

    .line 55
    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v8

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->offset:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    add-int/lit8 v0, v8, 0x1

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    mul-int/2addr v0, v3

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->offset:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 65
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 70
    return-void
.end method
