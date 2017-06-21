.class public Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "HorizontalProgressDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;
.implements Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;
.implements Lme/zhanghai/android/materialprogressbar/TintableDrawable;


# instance fields
.field private mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

.field private mSecondaryAlpha:I

.field private mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

.field private mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v2, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v2, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v2, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 43
    const/high16 v1, 0x1020000

    invoke-virtual {p0, v3, v1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setId(II)V

    .line 44
    invoke-virtual {p0, v3}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    .line 46
    const v1, 0x102000f

    invoke-virtual {p0, v4, v1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setId(II)V

    .line 47
    invoke-virtual {p0, v4}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    .line 48
    const v1, 0x1010033

    invoke-static {v1, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getFloatFromAttrRes(ILandroid/content/Context;)F

    move-result v0

    .line 49
    .local v0, "disabledAlpha":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    .line 50
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iget v2, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    invoke-virtual {v1, v2}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setAlpha(I)V

    .line 51
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v1, v3}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setShowTrack(Z)V

    .line 53
    const v1, 0x102000d

    invoke-virtual {p0, v5, v1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setId(II)V

    .line 54
    invoke-virtual {p0, v5}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iput-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    .line 55
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v1, v3}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setShowTrack(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public getShowTrack()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getShowTrack()Z

    move-result v0

    return v0
.end method

.method public getUseIntrinsicPadding()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public setShowTrack(Z)V
    .locals 2
    .param p1, "showTrack"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getShowTrack()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 71
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setShowTrack(Z)V

    .line 73
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    if-eqz p1, :cond_1

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    :goto_0
    invoke-virtual {v1, v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setAlpha(I)V

    .line 75
    :cond_0
    return-void

    .line 73
    :cond_1
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTint(I)V

    .line 102
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTint(I)V

    .line 103
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTint(I)V

    .line 104
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 124
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 126
    return-void
.end method

.method public setUseIntrinsicPadding(Z)V
    .locals 1
    .param p1, "useIntrinsicPadding"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    .line 91
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    .line 92
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    .line 93
    return-void
.end method
