.class public Lcom/vk/attachpicker/util/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final START_DELAY:J = 0x10L

.field public static final accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field public static final accelerateInterpolator2:Landroid/view/animation/AccelerateInterpolator;

.field public static final decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public static final decelerateInterpolator2:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 20
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 21
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator2:Landroid/view/animation/DecelerateInterpolator;

    .line 22
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator2:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "oa"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    return-object p0
.end method

.method public static accelerate2(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "oa"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 71
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator2:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    return-object p0
.end method

.method public static accelerateDecelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "oa"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 76
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    return-object p0
.end method

.method public static accelerateDecelerate2(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "oa"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 81
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object p0
.end method

.method public static decelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "oa"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 56
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    return-object p0
.end method

.method public static decelerate2(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "oa"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 66
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator2:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    return-object p0
.end method

.method public static interpolate(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 86
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static varargs layersForAnimator(Landroid/animation/Animator;[Landroid/view/View;)V
    .locals 4
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 26
    aget-object v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lcom/vk/attachpicker/util/AnimationUtils$1;

    invoke-direct {v1, p1}, Lcom/vk/attachpicker/util/AnimationUtils$1;-><init>([Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
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
    .line 50
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "propertyName":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 51
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Lcom/vk/attachpicker/util/ArgbEvaluator;->getInstance()Lcom/vk/attachpicker/util/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 52
    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 45
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Lcom/vk/attachpicker/util/ArgbEvaluator;->getInstance()Lcom/vk/attachpicker/util/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 46
    return-object v0
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 91
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 98
    return-void
.end method

.method public static setScale(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scale"    # F

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 103
    return-void
.end method
