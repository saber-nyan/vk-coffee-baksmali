.class Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;
.super Ljava/lang/Object;
.source "ObjectAnimatorCompatBase.java"


# static fields
.field private static final NUM_POINTS:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateXYValues(Landroid/graphics/Path;[F[F)V
    .locals 8
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "xValues"    # [F
        .annotation build Landroid/support/annotation/Size;
            value = 0x1f4L
        .end annotation
    .end param
    .param p2, "yValues"    # [F
        .annotation build Landroid/support/annotation/Size;
            value = 0x1f4L
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 90
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, p0, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 91
    .local v3, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 93
    .local v2, "pathLength":F
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 94
    .local v4, "position":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x1f4

    if-ge v1, v5, :cond_0

    .line 95
    int-to-float v5, v1

    mul-float/2addr v5, v2

    const v6, 0x43f98000    # 499.0f

    div-float v0, v5, v6

    .line 96
    .local v0, "distance":F
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 97
    aget v5, v4, v7

    aput v5, p1, v1

    .line 98
    const/4 v5, 0x1

    aget v5, v4, v5

    aput v5, p2, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "distance":F
    :cond_0
    return-void
.end method

.method private static calculateXYValues(Landroid/graphics/Path;[I[I)V
    .locals 8
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "xValues"    # [I
        .annotation build Landroid/support/annotation/Size;
            value = 0x1f4L
        .end annotation
    .end param
    .param p2, "yValues"    # [I
        .annotation build Landroid/support/annotation/Size;
            value = 0x1f4L
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 105
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, p0, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 106
    .local v3, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 108
    .local v2, "pathLength":F
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 109
    .local v4, "position":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x1f4

    if-ge v1, v5, :cond_0

    .line 110
    int-to-float v5, v1

    mul-float/2addr v5, v2

    const v6, 0x43f98000    # 499.0f

    div-float v0, v5, v6

    .line 111
    .local v0, "distance":F
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 112
    aget v5, v4, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p1, v1

    .line 113
    const/4 v5, 0x1

    aget v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p2, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "distance":F
    :cond_0
    return-void
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 31
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 32
    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 24
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 25
    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    const/16 v4, 0x1f4

    .line 51
    new-array v1, v4, [F

    .line 52
    .local v1, "xValues":[F
    new-array v3, v4, [F

    .line 53
    .local v3, "yValues":[F
    invoke-static {p3, v1, v3}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[F[F)V

    .line 55
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 56
    .local v0, "xPvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 58
    .local v2, "yPvh":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    const/16 v4, 0x1f4

    .line 38
    new-array v1, v4, [F

    .line 39
    .local v1, "xValues":[F
    new-array v3, v4, [F

    .line 40
    .local v3, "yValues":[F
    invoke-static {p3, v1, v3}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[F[F)V

    .line 42
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 43
    .local v0, "xPvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 45
    .local v2, "yPvh":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    const/16 v4, 0x1f4

    .line 77
    new-array v1, v4, [I

    .line 78
    .local v1, "xValues":[I
    new-array v3, v4, [I

    .line 79
    .local v3, "yValues":[I
    invoke-static {p3, v1, v3}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[I[I)V

    .line 81
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 82
    .local v0, "xPvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 84
    .local v2, "yPvh":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    const/16 v4, 0x1f4

    .line 64
    new-array v1, v4, [I

    .line 65
    .local v1, "xValues":[I
    new-array v3, v4, [I

    .line 66
    .local v3, "yValues":[I
    invoke-static {p3, v1, v3}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[I[I)V

    .line 68
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 69
    .local v0, "xPvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 71
    .local v2, "yPvh":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method
