.class public Lcom/vkcoffee/android/ui/RadialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RadialProgressDrawable.java"


# static fields
.field static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field static progressPaint:Landroid/graphics/Paint;


# instance fields
.field animatedProgressValue:F

.field animationProgressStart:F

.field circleRect:Landroid/graphics/RectF;

.field currentProgress:F

.field currentProgressTime:J

.field lastUpdateTime:J

.field mThickness:I

.field progressColor:I

.field startMultipler:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->lastUpdateTime:J

    .line 22
    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->startMultipler:F

    .line 23
    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgress:F

    .line 24
    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animationProgressStart:F

    .line 25
    iput-wide v2, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    .line 26
    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->circleRect:Landroid/graphics/RectF;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressColor:I

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->mThickness:I

    .line 37
    sget-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    .line 40
    sget-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    sget-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v12, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    .line 94
    sget-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    sget-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    sget-object v0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->mThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->circleRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->circleRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->mThickness:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->mThickness:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 99
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->circleRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->startMultipler:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    const/high16 v0, 0x40800000    # 4.0f

    iget v3, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    mul-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 102
    .local v8, "newTime":J
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->lastUpdateTime:J

    sub-long v6, v8, v0

    .line 104
    .local v6, "dt":J
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->lastUpdateTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->startMultipler:F

    long-to-float v1, v6

    const v2, 0x453b8000    # 3000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->startMultipler:F

    .line 106
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgress:F

    iget v1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animationProgressStart:F

    sub-float v10, v0, v1

    .line 107
    .local v10, "progressDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_0

    .line 108
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    .line 109
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 110
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgress:F

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    .line 111
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgress:F

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animationProgressStart:F

    .line 112
    iput-wide v12, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    .line 118
    .end local v10    # "progressDiff":F
    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->lastUpdateTime:J

    .line 119
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->invalidateSelf()V

    .line 120
    return-void

    .line 114
    .restart local v10    # "progressDiff":F
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animationProgressStart:F

    sget-object v1, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v2, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    long-to-float v2, v2

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xff

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x1

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x1

    .line 73
    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->setProgress(FZ)V

    .line 74
    return v2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 85
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iput p1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    .line 58
    iput p1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animationProgressStart:F

    .line 65
    :goto_0
    iput p1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgress:F

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->currentProgressTime:J

    .line 68
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->invalidateSelf()V

    .line 69
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 61
    iput p1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    .line 63
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animatedProgressValue:F

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->animationProgressStart:F

    goto :goto_0
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->progressColor:I

    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->invalidateSelf()V

    .line 48
    return-void
.end method

.method public setThickness(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 51
    invoke-static {p1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->mThickness:I

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RadialProgressDrawable;->invalidateSelf()V

    .line 53
    return-void
.end method
