.class Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;
.super Ljava/lang/Object;
.source "IndeterminateHorizontalProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RectTransformX"
.end annotation


# instance fields
.field public mScaleX:F

.field public mTranslateX:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "translateX"    # F
    .param p2, "scaleX"    # F

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mTranslateX:F

    .line 148
    iput p2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mScaleX:F

    .line 149
    return-void
.end method

.method public constructor <init>(Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;)V
    .locals 1
    .param p1, "that"    # Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget v0, p1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mTranslateX:F

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mTranslateX:F

    .line 153
    iget v0, p1, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mScaleX:F

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mScaleX:F

    .line 154
    return-void
.end method


# virtual methods
.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 165
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mScaleX:F

    .line 166
    return-void
.end method

.method public setTranslateX(F)V
    .locals 0
    .param p1, "translateX"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 159
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable$RectTransformX;->mTranslateX:F

    .line 160
    return-void
.end method
