.class Lme/zhanghai/android/materialprogressbar/Animators;
.super Ljava/lang/Object;
.source "Animators.java"


# static fields
.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x439e3475

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    .line 29
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const v1, -0x3bfd599a    # -522.6f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const v1, 0x42439950

    const v3, 0x432606cd

    const v5, 0x43969bd0

    move v4, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 32
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const v1, 0x434594cf

    const v3, 0x43d27dc9

    const v5, 0x43d27dc9

    move v4, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    .line 42
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    const v1, 0x3f53ac64

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    invoke-virtual {v0, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    .line 54
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v1, -0x3cba6666    # -197.6f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v1, 0x41648256

    const v3, 0x42aa27d8

    const v5, 0x43078c01

    move v4, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 57
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v1, 0x42590c32

    const v3, 0x42b4d966

    const v5, 0x43283e4a

    move v4, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 59
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v1, 0x4310b8b7

    move v3, v10

    move v4, v2

    move v5, v10

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    .line 70
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    const v1, 0x3f1245ed

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    const v1, 0x3f68f280

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIndeterminate(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 10
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x535

    const/4 v7, -0x1

    const/4 v6, 0x2

    .line 140
    const-string/jumbo v4, "trimPathStart"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 142
    .local v3, "trimPathStartAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    sget-object v4, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 146
    const-string/jumbo v4, "trimPathEnd"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 148
    .local v1, "trimPathEndAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    sget-object v4, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_END;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 152
    const-string/jumbo v4, "trimPathOffset"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 154
    .local v2, "trimPathOffsetAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    sget-object v4, Lme/zhanghai/android/materialprogressbar/Interpolators$LINEAR;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 158
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 159
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 161
    return-object v0

    .line 140
    nop

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data

    .line 146
    :array_1
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data

    .line 152
    :array_2
    .array-data 4
        0x0
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public static createIndeterminateHorizontalRect1(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 10
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 85
    const-string/jumbo v3, "translateX"

    sget-object v4, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    invoke-static {p0, v3, v6, v4}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 87
    .local v2, "translateXAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    sget-object v3, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 92
    const-string/jumbo v3, "scaleX"

    sget-object v4, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    invoke-static {p0, v6, v3, v4}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 94
    .local v1, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    sget-object v3, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT1_SCALE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 99
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 101
    return-object v0
.end method

.method public static createIndeterminateHorizontalRect2(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 10
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 113
    const-string/jumbo v3, "translateX"

    sget-object v4, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    invoke-static {p0, v3, v6, v4}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 115
    .local v2, "translateXAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    sget-object v3, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 120
    const-string/jumbo v3, "scaleX"

    sget-object v4, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    invoke-static {p0, v6, v3, v4}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 122
    .local v1, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    sget-object v3, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_SCALE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 128
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 129
    return-object v0
.end method

.method public static createIndeterminateRotation(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 4
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    .line 172
    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    .local v0, "rotationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1a09

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    sget-object v1, Lme/zhanghai/android/materialprogressbar/Interpolators$LINEAR;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 176
    return-object v0

    .line 172
    :array_0
    .array-data 4
        0x0
        0x44340000    # 720.0f
    .end array-data
.end method
