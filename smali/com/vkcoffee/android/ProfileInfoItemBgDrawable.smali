.class public Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProfileInfoItemBgDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field public bottomCorners:Z

.field private divPaint:Landroid/graphics/Paint;

.field public dividerEnabled:Z

.field private highlightPaint:Landroid/graphics/Paint;

.field private pressed:Z

.field public topCorners:Z

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 3
    .param p1, "div"    # Z
    .param p2, "top"    # Z
    .param p3, "bottom"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 12
    iput-boolean v2, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->dividerEnabled:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->topCorners:Z

    .line 14
    iput-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    .line 17
    iput-boolean p1, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->dividerEnabled:Z

    .line 18
    iput-boolean p3, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    .line 19
    iput-boolean p2, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->topCorners:Z

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bgPaint:Landroid/graphics/Paint;

    const v1, -0xcec8bd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    const v1, -0x7a2c11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->divPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->divPaint:Landroid/graphics/Paint;

    const v1, -0x1f1e1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    return-void
.end method

.method private isPressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->getState()[I

    move-result-object v0

    .line 106
    .local v0, "ds":[I
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 107
    .local v1, "s":I
    const v5, 0x10100a7

    if-ne v1, v5, :cond_1

    .line 108
    const/4 v2, 0x1

    .line 111
    .end local v1    # "s":I
    :cond_0
    return v2

    .line 106
    .restart local v1    # "s":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v12, 0x40a00000    # 5.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 39
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 40
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->topCorners:Z

    if-eqz v4, :cond_b

    .line 41
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 42
    .local v2, "r1":Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    if-eqz v4, :cond_1

    .line 43
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 45
    :cond_1
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->topCorners:Z

    if-eqz v4, :cond_2

    .line 46
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 48
    :cond_2
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    if-eqz v4, :cond_3

    .line 49
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 51
    :cond_3
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    if-eqz v4, :cond_8

    .line 52
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->dividerEnabled:Z

    if-eqz v4, :cond_4

    .line 53
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 56
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    :goto_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    if-eqz v4, :cond_5

    .line 61
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 62
    .local v3, "r2":Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 63
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 64
    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v5, v4

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v6, v4

    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 66
    .end local v3    # "r2":Landroid/graphics/RectF;
    :cond_5
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->topCorners:Z

    if-eqz v4, :cond_6

    .line 67
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 68
    .restart local v3    # "r2":Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 69
    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v5, v4

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v6, v4

    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 79
    .end local v2    # "r1":Landroid/graphics/Rect;
    .end local v3    # "r2":Landroid/graphics/RectF;
    :cond_6
    :goto_3
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->dividerEnabled:Z

    if-eqz v4, :cond_7

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v1, "divFrame":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v13}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 82
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v13}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 83
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 84
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 85
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->divPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 87
    .end local v1    # "divFrame":Landroid/graphics/Rect;
    :cond_7
    return-void

    .line 58
    .restart local v2    # "r1":Landroid/graphics/Rect;
    :cond_8
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 64
    .restart local v3    # "r2":Landroid/graphics/RectF;
    :cond_9
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 69
    :cond_a
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 72
    .end local v2    # "r1":Landroid/graphics/Rect;
    .end local v3    # "r2":Landroid/graphics/RectF;
    :cond_b
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 73
    iget-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    if-eqz v4, :cond_6

    .line 74
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 75
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 132
    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 133
    iget-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->topCorners:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 134
    iget-boolean v0, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->bottomCorners:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 135
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    goto :goto_1
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    .line 95
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    .line 96
    .local v0, "s":I
    const v3, 0x10100a7

    if-ne v0, v3, :cond_0

    .line 97
    iput-boolean v4, p0, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->pressed:Z

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "s":I
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ProfileInfoItemBgDrawable;->invalidateSelf()V

    .line 101
    return v4
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 124
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 129
    return-void
.end method
