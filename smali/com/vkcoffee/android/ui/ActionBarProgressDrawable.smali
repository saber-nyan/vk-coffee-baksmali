.class public Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarProgressDrawable.java"


# static fields
.field private static final HEIGHT_ANIM_DURATION:J = 0x12cL

.field private static final STEP_ANIM_DURATION:J = 0x12cL


# instance fields
.field private animToStep:I

.field private bg:Landroid/graphics/drawable/Drawable;

.field private heightAnimStart:J

.field private itrp:Landroid/view/animation/Interpolator;

.field private rectPaint:Landroid/graphics/Paint;

.field private step:I

.field private stepAnimStart:J

.field private total:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, -0x1

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->total:I

    .line 19
    iput v1, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->animToStep:I

    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->bg:Landroid/graphics/drawable/Drawable;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->rectPaint:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->itrp:Landroid/view/animation/Interpolator;

    .line 30
    return-void
.end method


# virtual methods
.method public animateHeight()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->heightAnimStart:J

    .line 101
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    .line 102
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 35
    .local v1, "bnds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 36
    iget-object v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->total:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 39
    .local v5, "stepSize":F
    const/4 v0, 0x0

    .line 40
    .local v0, "animRunning":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->heightAnimStart:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 41
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->itrp:Landroid/view/animation/Interpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->heightAnimStart:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x43960000    # 300.0f

    div-float/2addr v8, v9

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 42
    .local v3, "height":I
    const/4 v0, 0x1

    .line 46
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->stepAnimStart:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 47
    iget v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->animToStep:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 48
    .local v2, "diff":F
    iget v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget-object v7, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->itrp:Landroid/view/animation/Interpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->stepAnimStart:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x43960000    # 300.0f

    div-float/2addr v8, v9

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 49
    .local v4, "offset":I
    const/4 v0, 0x1

    .line 57
    .end local v2    # "diff":F
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v3

    int-to-float v8, v4

    add-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v6, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    .line 61
    :cond_0
    return-void

    .line 44
    .end local v3    # "height":I
    .end local v4    # "offset":I
    :cond_1
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    .restart local v3    # "height":I
    goto :goto_0

    .line 51
    :cond_2
    iget v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->animToStep:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 52
    iget v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->animToStep:I

    iput v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    .line 53
    const/4 v6, -0x1

    iput v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->animToStep:I

    .line 55
    :cond_3
    iget v6, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 73
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 79
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    .line 88
    return-void
.end method

.method public setStepAnimated(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->step:I

    if-ne v0, p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->animToStep:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->stepAnimStart:J

    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setStepCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->total:I

    .line 83
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    .line 84
    return-void
.end method
