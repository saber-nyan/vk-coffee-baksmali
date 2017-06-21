.class public Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;
.source "IndeterminateProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;,
        Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;
    }
.end annotation


# static fields
.field private static final PADDED_INTRINSIC_SIZE_DP:F = 16.0f

.field private static final PROGRESS_INTRINSIC_SIZE_DP:F = 3.2f

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicSize:I

.field private mProgressIntrinsicSize:I

.field private mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

.field private mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v4, -0x3e400000    # -24.0f

    const/high16 v1, -0x3e580000    # -21.0f

    const/high16 v3, -0x3e680000    # -19.0f

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    .line 31
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .local v0, "density":F
    const v1, 0x404ccccd    # 3.2f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mProgressIntrinsicSize:I

    .line 43
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mPaddedIntrinsicSize:I

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    .line 46
    invoke-static {v3}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminate(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    .line 47
    invoke-static {v3}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminateRotation(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    .line 49
    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 110
    .local v6, "saveCount":I
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    invoke-static {v0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;->access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 113
    const/high16 v0, -0x3d4c0000    # -90.0f

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    iget-object v4, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v4, v4, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathStart:F

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    add-float v2, v0, v1

    .line 115
    .local v2, "startAngle":F
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v0, v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathStart:F

    sub-float/2addr v0, v1

    mul-float v3, v5, v0

    .line 117
    .local v3, "sweepAngle":F
    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 120
    return-void
.end method

.method private getIntrinsicSize()I
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mPaddedIntrinsicSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mProgressIntrinsicSize:I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mAlpha:I

    if-nez v0, :cond_0

    .line 77
    const/4 v0, -0x2

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 79
    const/4 v0, -0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public bridge synthetic getUseIntrinsicPadding()Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 96
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    .line 97
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 98
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    :goto_0
    invoke-direct {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 105
    return-void

    .line 100
    :cond_0
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 101
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 87
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 91
    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTint(I)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setUseIntrinsicPadding(Z)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setUseIntrinsicPadding(Z)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->stop()V

    return-void
.end method
