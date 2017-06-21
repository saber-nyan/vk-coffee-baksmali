.class Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;
.source "SingleHorizontalProgressDrawable.java"


# static fields
.field private static final LEVEL_MAX:I = 0x2710

.field private static final PADDED_INTRINSIC_HEIGHT_DP:F = 16.0f

.field private static final PROGRESS_INTRINSIC_HEIGHT_DP:F = 3.2f

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicHeight:I

.field private mProgressIntrinsicHeight:I

.field private mShowTrack:Z

.field private mTrackAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, -0x3ccc0000    # -180.0f

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .local v0, "density":F
    const v1, 0x404ccccd    # 3.2f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mProgressIntrinsicHeight:I

    .line 34
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mPaddedIntrinsicHeight:I

    .line 36
    const v1, 0x1010033

    invoke-static {v1, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getFloatFromAttrRes(ILandroid/content/Context;)F

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mTrackAlpha:F

    .line 37
    return-void
.end method

.method private drawProgressRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 108
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getLevel()I

    move-result v0

    .line 109
    .local v0, "level":I
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 114
    .local v1, "saveCount":I
    int-to-float v2, v0

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 116
    sget-object v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private static drawTrackRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 103
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 104
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mPaddedIntrinsicHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mProgressIntrinsicHeight:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mAlpha:I

    if-nez v0, :cond_0

    .line 64
    const/4 v0, -0x2

    .line 68
    :goto_0
    return v0

    .line 65
    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mTrackAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 66
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getShowTrack()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

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

    .line 86
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_1

    .line 87
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 88
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    :goto_0
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mTrackAlpha:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    invoke-static {p1, p4}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->drawTrackRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 97
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mAlpha:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    :cond_0
    invoke-direct {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->drawProgressRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 100
    return-void

    .line 90
    :cond_1
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 91
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->invalidateSelf()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 80
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    return-void
.end method

.method public setShowTrack(Z)V
    .locals 1
    .param p1, "showTrack"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    if-eq v0, p1, :cond_0

    .line 45
    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    .line 46
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->invalidateSelf()V

    .line 48
    :cond_0
    return-void
.end method
