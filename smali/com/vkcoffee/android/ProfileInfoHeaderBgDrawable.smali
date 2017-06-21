.class public Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProfileInfoHeaderBgDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private divPaint:Landroid/graphics/Paint;

.field public topCorners:Z

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "top"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->topCorners:Z

    .line 16
    iput-boolean p1, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->topCorners:Z

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->bgPaint:Landroid/graphics/Paint;

    const v1, -0xcec8bd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->whitePaint:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->divPaint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->divPaint:Landroid/graphics/Paint;

    const v1, -0x363434

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 31
    invoke-virtual {p0}, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 32
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 33
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 34
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->topCorners:Z

    if-eqz v4, :cond_2

    .line 35
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 36
    .local v2, "r1":Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->topCorners:Z

    if-eqz v4, :cond_0

    .line 37
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 40
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 41
    .local v3, "r2":Landroid/graphics/RectF;
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->topCorners:Z

    if-eqz v4, :cond_1

    .line 42
    iget v4, v3, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 44
    :cond_1
    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 48
    .end local v2    # "r1":Landroid/graphics/Rect;
    .end local v3    # "r2":Landroid/graphics/RectF;
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .local v1, "divFrame":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 50
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 51
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 52
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 53
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->divPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    return-void

    .line 46
    .end local v1    # "divFrame":Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v1, 0x41000000    # 8.0f

    .line 74
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 75
    iget-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoHeaderBgDrawable;->topCorners:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 76
    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 77
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 71
    return-void
.end method
