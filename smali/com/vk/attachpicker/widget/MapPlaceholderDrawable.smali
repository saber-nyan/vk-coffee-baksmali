.class public Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MapPlaceholderDrawable.java"


# instance fields
.field private final gap:I

.field private linePaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 11
    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->paint:Landroid/graphics/Paint;

    .line 19
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x21282a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    const v1, -0x394042

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    div-int v8, v0, v1

    .line 29
    .local v8, "xcount":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    div-int v10, v0, v1

    .line 30
    .local v10, "ycount":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 31
    .local v7, "x":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 32
    .local v9, "y":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 33
    iget v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    add-int/lit8 v1, v6, 0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    int-to-float v1, v0

    int-to-float v2, v9

    iget v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    add-int/lit8 v3, v6, 0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v7

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 35
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_1

    .line 36
    int-to-float v1, v7

    iget v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    add-int/lit8 v2, v6, 0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v9

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->gap:I

    add-int/lit8 v4, v6, 0x1

    mul-int/2addr v0, v4

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vk/attachpicker/widget/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 43
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 48
    return-void
.end method
