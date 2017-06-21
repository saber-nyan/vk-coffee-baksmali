.class public final Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;
.super Ljava/lang/Object;
.source "SmoothProgressBarUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "colors"    # [I
    .param p1, "strokeWidth"    # F

    .prologue
    .line 14
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lfr/castorflex/android/smoothprogressbar/ColorsShape;

    invoke-direct {v1, p1, p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;-><init>(F[I)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0
.end method
