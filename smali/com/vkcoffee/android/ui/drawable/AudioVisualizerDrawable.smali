.class public Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AudioVisualizerDrawable.java"


# static fields
.field private static final UPDATE_INTVL:J = 0x96L


# instance fields
.field private accelerate:Landroid/view/animation/AccelerateInterpolator;

.field private decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private interpolators:[Landroid/animation/TimeInterpolator;

.field private isAnimating:Z

.field private nextVals:[F

.field private paint:Landroid/graphics/Paint;

.field private prevVals:[F

.field private random:Ljava/util/Random;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->prevVals:[F

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->nextVals:[F

    .line 27
    new-array v0, v1, [Landroid/animation/TimeInterpolator;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->interpolators:[Landroid/animation/TimeInterpolator;

    .line 28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    .line 29
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->accelerate:Landroid/view/animation/AccelerateInterpolator;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->startTime:J

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->random:Ljava/util/Random;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0xae7e48

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x40c00000    # 6.0f

    const/4 v11, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 52
    .local v6, "h":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->startTime:J

    .line 55
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_2

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->prevVals:[F

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->nextVals:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 57
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->nextVals:[F

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->random:Ljava/util/Random;

    const v2, 0xf4240

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, v0, v7

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->interpolators:[Landroid/animation/TimeInterpolator;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->nextVals:[F

    aget v0, v0, v7

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->prevVals:[F

    aget v2, v2, v7

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->accelerate:Landroid/view/animation/AccelerateInterpolator;

    :goto_2
    aput-object v0, v1, v7

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->nextVals:[F

    aput v11, v0, v7

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_2

    .line 67
    .end local v7    # "i":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float v10, v0, v1

    .line 68
    .local v10, "t":F
    const/4 v9, 0x0

    .line 69
    .local v9, "s":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v13, :cond_3

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->prevVals:[F

    aget v0, v0, v7

    add-float/2addr v9, v0

    .line 71
    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->prevVals:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->nextVals:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->prevVals:[F

    aget v3, v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->interpolators:[Landroid/animation/TimeInterpolator;

    aget-object v3, v3, v7

    invoke-interface {v3, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v6

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 72
    .local v8, "rectH":I
    invoke-static {v12}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v1, v0

    sub-int v0, v6, v8

    int-to-float v2, v0

    invoke-static {v12}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    mul-int/2addr v0, v7

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 74
    .end local v8    # "rectH":I
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    cmpl-float v0, v9, v11

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->isAnimating:Z

    if-eqz v0, :cond_5

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->invalidateSelf()V

    .line 79
    :cond_5
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->isAnimating:Z

    .line 109
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget v0, p1, v4

    .line 110
    .local v0, "s":I
    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->isAnimating:Z

    const v1, 0x10100a1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_1
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->isAnimating:Z

    .line 109
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 110
    goto :goto_1

    .line 112
    .end local v0    # "s":I
    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 89
    return-void
.end method

.method public setColor(I)Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 94
    return-void
.end method
