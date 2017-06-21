.class public Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TabletDrawerItemBackgroundDrawable.java"


# instance fields
.field private isSelected:Z

.field private paint:Landroid/graphics/Paint;

.field private tmpRect:Landroid/graphics/RectF;

.field private widthDiff:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "wdiff"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->tmpRect:Landroid/graphics/RectF;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->isSelected:Z

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0xcdc2b6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iput p1, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->widthDiff:I

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 29
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->isSelected:Z

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->widthDiff:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->invalidateSelf()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->isSelected:Z

    .line 68
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 69
    .local v0, "s":I
    const v3, 0x10100a1

    if-ne v0, v3, :cond_1

    .line 70
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->isSelected:Z

    .line 74
    .end local v0    # "s":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;->invalidateSelf()V

    .line 75
    return v4

    .line 68
    .restart local v0    # "s":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 42
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 47
    return-void
.end method
