.class public Lcom/vkcoffee/android/ui/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# instance fields
.field private DEFAULT_SIZE_DIP:I

.field private accInterpolator:Landroid/view/animation/Interpolator;

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private bgPaint:Landroid/graphics/Paint;

.field private checkMark:Landroid/graphics/Path;

.field private circleAnim:Landroid/graphics/Path;

.field private clearPaint:Landroid/graphics/Paint;

.field private currentProgressTime:J

.field private dimBg:Z

.field private doneAnimStart:J

.field private fgPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private lastUpdateTime:J

.field private level:I

.field private matrix:Landroid/graphics/Matrix;

.field private overInterpolator:Landroid/view/animation/Interpolator;

.field private pad:Z

.field private pbPaint:Landroid/graphics/Paint;

.field private pbgPaint:Landroid/graphics/Paint;

.field private playingDoneAnim:Z

.field private rect:Landroid/graphics/Rect;

.field private tmpRect:Landroid/graphics/RectF;

.field private useCheckMark:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 5
    .param p1, "useCheckMark"    # Z

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x1

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->dimBg:Z

    .line 27
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pad:Z

    .line 28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->accInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->overInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->matrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->tmpRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    .line 40
    const/16 v0, 0x46

    iput v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->DEFAULT_SIZE_DIP:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->fgPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->clearPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->clearPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->useCheckMark:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x461c4000    # 10000.0f

    div-float v9, v2, v4

    .line 133
    .local v9, "progr":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pad:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->DEFAULT_SIZE_DIP:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v8, v2

    .line 136
    .local v8, "cs":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->dimBg:Z

    if-eqz v2, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->tmpRect:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->tmpRect:Landroid/graphics/RectF;

    .line 140
    .local v3, "pb":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/lit8 v4, v8, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v8, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v8, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v8, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->useCheckMark:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->playingDoneAnim:Z

    if-eqz v2, :cond_5

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->doneAnimStart:J

    sub-long/2addr v4, v6

    long-to-float v2, v4

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float v16, v2, v4

    .line 144
    .local v16, "time":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    neg-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 145
    move/from16 v0, v16

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 148
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->accInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v16

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 149
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->accInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v16

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 148
    invoke-virtual {v3, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->fgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    if-eqz v2, :cond_2

    move/from16 v0, v16

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->overInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v16, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    .line 155
    .local v15, "t":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v15, v15, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->circleAnim:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->fgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    .end local v15    # "t":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->invalidateSelf()V

    .line 189
    .end local v16    # "time":F
    :cond_3
    :goto_1
    return-void

    .line 135
    .end local v3    # "pb":Landroid/graphics/RectF;
    .end local v8    # "cs":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    float-to-int v4, v4

    sub-int v8, v2, v4

    goto/16 :goto_0

    .line 169
    .restart local v3    # "pb":Landroid/graphics/RectF;
    .restart local v8    # "cs":I
    :cond_5
    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 170
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animatedProgressValue:F

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 175
    .local v12, "newTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->lastUpdateTime:J

    sub-long v10, v12, v4

    .line 176
    .local v10, "dt":J
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->lastUpdateTime:J

    .line 177
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animationProgressStart:F

    sub-float v14, v9, v2

    .line 178
    .local v14, "progressDiff":F
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->currentProgressTime:J

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->currentProgressTime:J

    .line 180
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->currentProgressTime:J

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6

    .line 181
    move-object/from16 v0, p0

    iput v9, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animatedProgressValue:F

    .line 182
    move-object/from16 v0, p0

    iput v9, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animationProgressStart:F

    .line 183
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->currentProgressTime:J

    .line 187
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_1

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animationProgressStart:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->currentProgressTime:J

    long-to-float v5, v6

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v14

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animatedProgressValue:F

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const v5, 0x3f333333    # 0.7f

    .line 78
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 79
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->useCheckMark:Z

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    .line 81
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, 0x3eb983c1

    const v4, -0x41a08b44

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, 0x3ea36c8b

    const v4, -0x417a2a53

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, -0x41feff51

    const v4, 0x3e404444

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, -0x415753f8

    const v4, -0x4393a06d

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, -0x414138a9

    const v4, 0x3ceb596e

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, -0x41ff56b3

    const v4, 0x3e8c5cd8

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, -0x42570fb4

    const v4, 0x3e6c8b44    # 0.231f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    const v3, -0x4256a7f0

    const v4, 0x3e6c54a7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 90
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 91
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pad:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->DEFAULT_SIZE_DIP:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    .line 92
    .local v0, "cs":I
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .local v1, "m":Landroid/graphics/Matrix;
    int-to-float v2, v0

    mul-float/2addr v2, v5

    int-to-float v3, v0

    mul-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 94
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->checkMark:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 96
    .end local v0    # "cs":I
    .end local v1    # "m":Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->level:I

    .line 119
    iget v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animatedProgressValue:F

    iput v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->animationProgressStart:F

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->currentProgressTime:J

    .line 121
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->invalidateSelf()V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public playDoneAnimation()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->playingDoneAnim:Z

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->doneAnimStart:J

    .line 128
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->invalidateSelf()V

    .line 129
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 209
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 215
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "ringColor"    # I
    .param p2, "fillColor"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    return-void
.end method

.method public setDimBackground(Z)V
    .locals 0
    .param p1, "dim"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->dimBg:Z

    .line 105
    return-void
.end method

.method public setPad(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pad:Z

    .line 114
    return-void
.end method

.method public setThickness(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    return-void
.end method
