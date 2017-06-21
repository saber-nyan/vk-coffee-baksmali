.class abstract Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawableBase.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;
.implements Lme/zhanghai/android/materialprogressbar/TintableDrawable;


# instance fields
.field protected mAlpha:I

.field protected mColorFilter:Landroid/graphics/ColorFilter;

.field private mPaint:Landroid/graphics/Paint;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintList:Landroid/content/res/ColorStateList;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;

.field protected mUseIntrinsicPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mUseIntrinsicPadding:Z

    .line 30
    const/16 v1, 0xff

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mAlpha:I

    .line 33
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 39
    sget v1, Lme/zhanghai/android/materialprogressbar/R$attr;->colorControlActivated:I

    invoke-static {v1, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getColorFromAttrRes(ILandroid/content/Context;)I

    move-result v0

    .line 43
    .local v0, "colorControlActivated":I
    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->setTint(I)V

    .line 44
    return-void
.end method

.method private makeTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 129
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private needMirroring()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 144
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v3, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    .line 149
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->onPreparePaint(Landroid/graphics/Paint;)V

    .line 154
    :cond_2
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 156
    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_1
    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 160
    .local v2, "saveCount":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->needMirroring()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 166
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v4, v5}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 155
    .end local v1    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v2    # "saveCount":I
    :cond_4
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_1
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getUseIntrinsicPadding()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mUseIntrinsicPadding:Z

    return v0
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
.end method

.method protected abstract onPreparePaint(Landroid/graphics/Paint;)V
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 70
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 71
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mAlpha:I

    .line 72
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->invalidateSelf()V

    .line 74
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 90
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->invalidateSelf()V

    .line 91
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 99
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintList:Landroid/content/res/ColorStateList;

    .line 107
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->makeTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 108
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->invalidateSelf()V

    .line 109
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 117
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->makeTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 118
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->invalidateSelf()V

    .line 119
    return-void
.end method

.method public setUseIntrinsicPadding(Z)V
    .locals 1
    .param p1, "useIntrinsicPadding"    # Z

    .prologue
    .line 59
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mUseIntrinsicPadding:Z

    if-eq v0, p1, :cond_0

    .line 60
    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->mUseIntrinsicPadding:Z

    .line 61
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->invalidateSelf()V

    .line 63
    :cond_0
    return-void
.end method
