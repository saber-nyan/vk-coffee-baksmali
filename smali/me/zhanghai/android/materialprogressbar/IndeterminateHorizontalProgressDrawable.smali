.class public Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;
.source "IndeterminateHorizontalProgressDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;
    }
.end annotation


# static fields
.field private static final PADDED_INTRINSIC_HEIGHT_DP:F = 16.0f

.field private static final PROGRESS_INTRINSIC_HEIGHT_DP:F = 3.2f

.field private static final RECT_1_TRANSFORM_X:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

.field private static final RECT_2_TRANSFORM_X:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicHeight:I

.field private mProgressIntrinsicHeight:I

.field private mRect1TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

.field private mRect2TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

.field private mShowTrack:Z

.field private mTrackAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v3, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, v4, v1, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3cf00000    # -144.0f

    const/high16 v2, 0x43100000    # 144.0f

    invoke-direct {v0, v1, v3, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    const v1, -0x3bfd599a    # -522.6f

    invoke-direct {v0, v1, v5}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;-><init>(FF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_1_TRANSFORM_X:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    .line 30
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    const v1, -0x3cba6666    # -197.6f

    invoke-direct {v0, v1, v5}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;-><init>(FF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_2_TRANSFORM_X:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 46
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v4, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mShowTrack:Z

    .line 37
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_1_TRANSFORM_X:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;)V

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mRect1TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    .line 38
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_2_TRANSFORM_X:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;)V

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mRect2TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v0, "density":F
    const v1, 0x404ccccd    # 3.2f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mProgressIntrinsicHeight:I

    .line 50
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mPaddedIntrinsicHeight:I

    .line 52
    const v1, 0x1010033

    invoke-static {v1, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getFloatFromAttrRes(ILandroid/content/Context;)F

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mTrackAlpha:F

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mRect1TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    .line 55
    invoke-static {v3}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminateHorizontalRect1(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mRect2TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    .line 56
    invoke-static {v2}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminateHorizontalRect2(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    .line 58
    return-void
.end method

.method private static drawProgressRect(Landroid/graphics/Canvas;Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;Landroid/graphics/Paint;)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "transformX"    # Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 133
    .local v0, "saveCount":I
    iget v1, p1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mTranslateX:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    iget v1, p1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mScaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 136
    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 139
    return-void
.end method

.method private static drawTrackRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 127
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 128
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mPaddedIntrinsicHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mProgressIntrinsicHeight:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mAlpha:I

    if-nez v0, :cond_0

    .line 93
    const/4 v0, -0x2

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mShowTrack:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mTrackAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 95
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getShowTrack()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mShowTrack:Z

    return v0
.end method

.method public bridge synthetic getUseIntrinsicPadding()Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .prologue
    .line 21
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

    .line 109
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_1

    .line 110
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 111
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    :goto_0
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mShowTrack:Z

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mTrackAlpha:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    invoke-static {p1, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->drawTrackRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 120
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mAlpha:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mRect2TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    invoke-static {p1, v0, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->drawProgressRect(Landroid/graphics/Canvas;Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;Landroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mRect1TransformX:Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    invoke-static {p1, v0, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->drawProgressRect(Landroid/graphics/Canvas;Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;Landroid/graphics/Paint;)V

    .line 124
    return-void

    .line 113
    :cond_1
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 114
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

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
    .line 103
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .prologue
    .line 21
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
    .line 21
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShowTrack(Z)V
    .locals 1
    .param p1, "showTrack"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mShowTrack:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->mShowTrack:Z

    .line 75
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;->invalidateSelf()V

    .line 77
    :cond_0
    return-void
.end method

.method public bridge synthetic setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 21
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
    .line 21
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
    .line 21
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setUseIntrinsicPadding(Z)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setUseIntrinsicPadding(Z)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->stop()V

    return-void
.end method
