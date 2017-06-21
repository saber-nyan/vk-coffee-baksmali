.class public Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MessageStatusDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseOut;,
        Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseIn;,
        Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;,
        Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;
    }
.end annotation


# static fields
.field protected static easeIn:Landroid/animation/TimeInterpolator;

.field protected static easeOut:Landroid/animation/TimeInterpolator;


# instance fields
.field protected final clock:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected clockAlpha:I

.field protected clockScale:F

.field protected color:I

.field protected currentAnimator:Landroid/animation/Animator;

.field protected final dot:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected dotScale:F

.field protected final error:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected errorScale:F

.field protected state:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseIn;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseIn;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeIn:Landroid/animation/TimeInterpolator;

    .line 349
    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseOut;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseOut;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    iput v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    iput v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    .line 29
    const/16 v1, 0xff

    iput v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 30
    iput-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->state:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    .line 31
    iput-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->currentAnimator:Landroid/animation/Animator;

    .line 32
    const v1, -0x855f34

    iput v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->color:I

    .line 35
    const v1, 0x7f02013d

    invoke-static {p1, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    .line 36
    const v1, 0x7f0200f3

    invoke-static {p1, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    .line 37
    const v1, 0x7f0201a0

    invoke-static {p1, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    .local v0, "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    sget-object v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    .line 42
    return-void
.end method

.method protected static duration(F)I
    .locals 2
    .param p0, "t"    # F

    .prologue
    .line 231
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    const v1, 0x3f5d70a4    # 0.865f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected static varargs getIntrinsicHeight([Landroid/graphics/drawable/Drawable;)I
    .locals 3
    .param p0, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "maxH":I
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 117
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    :cond_1
    return v1
.end method

.method protected static varargs getIntrinsicWidth([Landroid/graphics/drawable/Drawable;)I
    .locals 3
    .param p0, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "maxH":I
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 109
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v1, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    :cond_1
    return v1
.end method


# virtual methods
.method protected animateForHaveBeenRed()[Landroid/animation/Animator;
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 270
    const-string/jumbo v2, "scaleDot"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 271
    .local v0, "a1":Landroid/animation/Animator;
    sget-object v2, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    const-string/jumbo v2, "scaleClock"

    new-array v3, v5, [F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v4

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 273
    .local v1, "a2":Landroid/animation/Animator;
    sget-object v2, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    return-object v2

    .line 270
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected animateForHideError()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 260
    const-string/jumbo v0, "scaleError"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected animateForSending()[Landroid/animation/Animator;
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x2

    .line 264
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    const-string/jumbo v2, "alphaClock"

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "alphaDot"

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 265
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "scaleClock"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    .line 266
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    return-object v0

    .line 264
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 265
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected animateForSent()[Landroid/animation/Animator;
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 278
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    sget v6, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->totalDurationK:F

    sget v7, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->duration1:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->duration(F)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 279
    .local v1, "scale1":Landroid/animation/AnimatorSet;
    new-array v5, v9, [Landroid/animation/Animator;

    const-string/jumbo v6, "scaleDot"

    new-array v7, v9, [F

    invoke-virtual {p0, v12}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toClockSize(F)F

    move-result v8

    aput v8, v7, v10

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale1K:F

    aput v8, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "scaleClock"

    new-array v7, v9, [F

    aput v12, v7, v10

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale1K:F

    .line 280
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v8

    aput v8, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    .line 279
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 281
    sget-object v5, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    sget v6, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->totalDurationK:F

    sget v7, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->duration2:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->duration(F)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 284
    .local v2, "scale2":Landroid/animation/AnimatorSet;
    new-array v5, v9, [Landroid/animation/Animator;

    const-string/jumbo v6, "scaleDot"

    new-array v7, v9, [F

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale1K:F

    aput v8, v7, v10

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale2K:F

    aput v8, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "scaleClock"

    new-array v7, v9, [F

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale1K:F

    .line 285
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v8

    aput v8, v7, v10

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale2K:F

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v8

    aput v8, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    .line 284
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 286
    sget-object v5, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    sget v6, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->totalDurationK:F

    sget v7, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->duration3:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->duration(F)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 289
    .local v3, "scale3":Landroid/animation/AnimatorSet;
    new-array v5, v9, [Landroid/animation/Animator;

    const-string/jumbo v6, "scaleDot"

    new-array v7, v9, [F

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale2K:F

    aput v8, v7, v10

    aput v12, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "scaleClock"

    new-array v7, v9, [F

    sget v8, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale2K:F

    .line 290
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v8

    aput v8, v7, v10

    invoke-virtual {p0, v12}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v8

    aput v8, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    .line 289
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    sget-object v5, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 293
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 294
    .local v4, "scaleAll":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 296
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    sget v6, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->totalDurationK:F

    sget v7, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->alphaDuration:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->duration(F)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 297
    .local v0, "alpha":Landroid/animation/AnimatorSet;
    new-array v5, v9, [Landroid/animation/Animator;

    const-string/jumbo v6, "alphaClock"

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "alphaDot"

    new-array v7, v9, [I

    fill-array-data v7, :array_1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 298
    sget-object v5, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v0, v5, v10

    aput-object v4, v5, v11

    return-object v5

    .line 297
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected animateForShowError()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 256
    const-string/jumbo v0, "scaleError"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected cancelCurrentAnimator()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->currentAnimator:Landroid/animation/Animator;

    .line 239
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    iget v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    iget v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    iget v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    return-void
.end method

.method public getDrawState()Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->state:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getIntrinsicHeight([Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->getIntrinsicWidth([Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    .line 82
    return-void
.end method

.method public setAlphaClock(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 338
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    .line 339
    return-void
.end method

.method public setAlphaDot(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    return-void
.end method

.method public setBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    sub-int v2, p3, p1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 127
    .local v1, "halfWidth":I
    sub-int v2, p4, p2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 129
    .local v0, "halfHeight":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    neg-int v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    sub-int v2, p3, p1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 132
    sub-int v2, p4, p2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 134
    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    neg-int v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    sub-int v2, p3, p1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 137
    sub-int v2, p4, p2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 139
    iget-object v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    neg-int v3, v1

    neg-int v4, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->error:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 89
    return-void
.end method

.method public setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V
    .locals 7
    .param p1, "state"    # Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->state:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    if-ne v0, p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$1;->$SwitchMap$com$vkontakte$android$ui$drawables$MessageStatusDrawable$DrawState:[I

    iput-object p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->state:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForHaveBeenRed()[Landroid/animation/Animator;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForShowError()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->startCurrentAnimator([Landroid/animation/Animator;[Landroid/animation/Animator;)V

    goto :goto_0

    .line 155
    :cond_1
    iput v4, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    .line 157
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    .line 158
    iput v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 160
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 163
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    goto :goto_0

    .line 167
    :pswitch_1
    if-eqz p2, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForSending()[Landroid/animation/Animator;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForHideError()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->startCurrentAnimator([Landroid/animation/Animator;[Landroid/animation/Animator;)V

    goto :goto_0

    .line 170
    :cond_2
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    .line 172
    iput v4, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    .line 173
    iput v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 175
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toClockSize(F)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 178
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    goto :goto_0

    .line 183
    :pswitch_2
    if-eqz p2, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForSent()[Landroid/animation/Animator;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForHideError()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->startCurrentAnimator([Landroid/animation/Animator;[Landroid/animation/Animator;)V

    goto :goto_0

    .line 186
    :cond_3
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    .line 188
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->toDotSize(F)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    .line 189
    const/16 v0, 0x78

    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 191
    iput v4, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 194
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    goto/16 :goto_0

    .line 198
    :pswitch_3
    if-eqz p2, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForHaveBeenRed()[Landroid/animation/Animator;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->animateForHideError()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->startCurrentAnimator([Landroid/animation/Animator;[Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    .line 203
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    .line 204
    iput v3, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockAlpha:I

    .line 206
    iput v2, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setScaleClock(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 313
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 314
    iput p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clockScale:F

    .line 315
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    .line 317
    :cond_0
    return-void
.end method

.method public setScaleDot(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 321
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 322
    iput p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dotScale:F

    .line 323
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    .line 325
    :cond_0
    return-void
.end method

.method public setScaleError(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 329
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 330
    iput p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->errorScale:F

    .line 331
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->invalidateSelf()V

    .line 333
    :cond_0
    return-void
.end method

.method protected startCurrentAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->cancelCurrentAnimator()V

    .line 243
    iput-object p1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 244
    return-void
.end method

.method protected varargs startCurrentAnimator([Landroid/animation/Animator;[Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animators1"    # [Landroid/animation/Animator;
    .param p2, "animators2"    # [Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 247
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [Landroid/animation/Animator;

    .line 249
    .local v1, "animators":[Landroid/animation/Animator;
    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    array-length v2, p1

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->startCurrentAnimator(Landroid/animation/Animator;)V

    .line 253
    return-void
.end method

.method protected toClockSize(F)F
    .locals 2
    .param p1, "clockScale"    # F

    .prologue
    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method protected toDotSize(F)F
    .locals 2
    .param p1, "dotScale"    # F

    .prologue
    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->dot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->clock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method
