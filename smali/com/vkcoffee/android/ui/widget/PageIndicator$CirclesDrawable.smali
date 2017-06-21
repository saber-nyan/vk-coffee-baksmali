.class Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;
.super Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CirclesDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;
    }
.end annotation


# instance fields
.field final colorNormal:I

.field final colorSelect:I

.field final durationMillis:I

.field final durationTriangleMillis:I

.field final maxCount:I

.field final paint:Landroid/graphics/Paint;

.field final pathTriangleLeft:Landroid/graphics/Path;

.field final pathTriangleRight:Landroid/graphics/Path;

.field final points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

.field final radiusBig:I

.field final radiusNormal:I

.field final shadowColor:I

.field final shadowRadius:F

.field final shadowX:F

.field final shadowY:F

.field final stepInner:I

.field final stepOuter:I

.field final triangleHeight:I

.field final triangleLeft:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

.field final triangleRight:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

.field final triangleWidth:I

.field final verticalPadding:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 321
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;-><init>()V

    .line 294
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 323
    .local v2, "rc":Landroid/content/res/Resources;
    sget-object v3, Lcom/vkcoffee/android/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 324
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {v2, v8}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$100(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusBig:I

    .line 325
    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$100(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusNormal:I

    .line 326
    invoke-static {v2, v6}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$100(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleWidth:I

    .line 327
    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$100(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleHeight:I

    .line 328
    const/4 v3, 0x7

    const/16 v4, 0xb

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$100(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepInner:I

    .line 329
    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$100(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepOuter:I

    .line 330
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    .line 331
    const/16 v3, 0xa

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorSelect:I

    .line 332
    const/16 v3, 0xb

    const v4, 0x66ffffff

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    .line 333
    const/16 v3, 0xc

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationMillis:I

    .line 334
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationTriangleMillis:I

    .line 335
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->verticalPadding:I

    .line 337
    const/16 v3, 0x11

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowRadius:F

    .line 338
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowX:F

    .line 339
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowY:F

    .line 340
    const/16 v3, 0x12

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowColor:I

    .line 342
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleRight:Landroid/graphics/Path;

    .line 345
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleRight:Landroid/graphics/Path;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 346
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleRight:Landroid/graphics/Path;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleHeight:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 347
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleRight:Landroid/graphics/Path;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleRight:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 350
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleLeft:Landroid/graphics/Path;

    .line 351
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleLeft:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 352
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleLeft:Landroid/graphics/Path;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 353
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleLeft:Landroid/graphics/Path;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 354
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleLeft:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 356
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    new-array v3, v3, [Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    if-ge v1, v3, :cond_1

    .line 358
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    if-nez v1, :cond_0

    new-instance v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorSelect:I

    iget v6, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusBig:I

    invoke-direct {v3, p0, v5, v6}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;-><init>(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;II)V

    :goto_1
    aput-object v3, v4, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    iget v6, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusNormal:I

    invoke-direct {v3, p0, v5, v6}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;-><init>(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;II)V

    goto :goto_1

    .line 360
    :cond_1
    new-instance v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    invoke-direct {v3, p0, v7, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;-><init>(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;II)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleRight:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    .line 361
    new-instance v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    invoke-direct {v3, p0, v7, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;-><init>(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;II)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleLeft:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    .line 363
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowColor:I

    if-eqz v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowRadius:F

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowX:F

    iget v6, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowY:F

    iget v7, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->shadowColor:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 367
    :cond_2
    return-void
.end method

.method private addTriangleAnimation(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;Landroid/animation/ArgbEvaluator;Ljava/util/List;I)I
    .locals 9
    .param p1, "triangle"    # Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;
    .param p2, "argbEvaluator"    # Landroid/animation/ArgbEvaluator;
    .param p4, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;",
            "Landroid/animation/ArgbEvaluator;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 441
    const-string/jumbo v3, "color"

    new-array v4, v8, [I

    iget v5, p1, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    aput v5, v4, v6

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorSelect:I

    aput v5, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationMillis:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 442
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 443
    const-string/jumbo v3, "color"

    new-array v4, v8, [I

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorSelect:I

    aput v5, v4, v6

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    aput v5, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationMillis:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 444
    .local v1, "animatorAfter":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 445
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationTriangleMillis:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 446
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 447
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 448
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationTriangleMillis:I

    add-int/2addr p4, v3

    .line 450
    return p4
.end method

.method private isNeedShowLeftTriangle(II)Z
    .locals 2
    .param p1, "offset"    # I
    .param p2, "current"    # I

    .prologue
    .line 454
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowRightTriangle(II)Z
    .locals 2
    .param p1, "offset"    # I
    .param p2, "current"    # I

    .prologue
    .line 458
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->windowSize:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

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
    const/4 v5, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 477
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 478
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->offset:I

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->current:I

    invoke-direct {p0, v2, v3}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->isNeedShowLeftTriangle(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleLeft:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iget v3, v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleLeft:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 484
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    if-ge v2, v3, :cond_1

    .line 485
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepInner:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 488
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepOuter:I

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 490
    .local v1, "pointsSizeForDraw":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 491
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepInner:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->size:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->offset:I

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->current:I

    invoke-direct {p0, v2, v3}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->isNeedShowRightTriangle(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepInner:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepOuter:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleRight:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    iget v3, v3, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->pathTriangleRight:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 502
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 503
    return-void
.end method

.method public getMinimumHeight()I
    .locals 3

    .prologue
    .line 465
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusBig:I

    mul-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusNormal:I

    mul-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleHeight:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->access$200([I)I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->verticalPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepInner:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->stepOuter:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 508
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 513
    return-void
.end method

.method public setCurrentPage(IZ)V
    .locals 19
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 378
    if-lez p1, :cond_3

    move/from16 v6, p1

    .line 379
    .local v6, "current":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    if-ge v6, v14, :cond_4

    .line 380
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->offset:I

    .line 381
    .local v12, "offset":I
    if-gez v12, :cond_0

    const/4 v12, 0x0

    .line 383
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->windowSize:I

    .line 385
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->windowSize:I

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    if-le v14, v15, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->windowSize:I

    sub-int v12, v14, v15

    .line 387
    if-lez v12, :cond_5

    .line 394
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->maxCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 395
    .local v13, "pointsSizeForDraw":I
    sub-int v14, v6, v12

    add-int/lit8 v15, v13, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 398
    .local v7, "currentPointPositionNew":I
    if-eqz p2, :cond_e

    .line 399
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v4, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 402
    .local v5, "argbEvaluator":Landroid/animation/ArgbEvaluator;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v13, :cond_a

    .line 403
    if-ne v9, v7, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusBig:I

    .line 404
    .local v11, "neededSize":I
    :goto_4
    if-ne v9, v7, :cond_9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorSelect:I

    .line 405
    .local v10, "neededColor":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v14, v14, v9

    iget v14, v14, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->size:I

    if-eq v14, v11, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v14, v14, v9

    const-string/jumbo v15, "size"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->size:I

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v11, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationMillis:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v14, v14, v9

    const-string/jumbo v15, "color"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v10, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationMillis:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 408
    .local v2, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 409
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 378
    .end local v4    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v5    # "argbEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v6    # "current":I
    .end local v7    # "currentPointPositionNew":I
    .end local v9    # "i":I
    .end local v10    # "neededColor":I
    .end local v11    # "neededSize":I
    .end local v12    # "offset":I
    .end local v13    # "pointsSizeForDraw":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 379
    .restart local v6    # "current":I
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    add-int/lit8 v6, v14, -0x1

    goto/16 :goto_1

    .line 387
    .restart local v12    # "offset":I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 388
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->windowSize:I

    add-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    if-le v6, v14, :cond_7

    .line 389
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->windowSize:I

    sub-int v14, v6, v14

    add-int/lit8 v12, v14, 0x1

    goto/16 :goto_2

    .line 390
    :cond_7
    if-ge v6, v12, :cond_1

    .line 391
    move v12, v6

    goto/16 :goto_2

    .line 403
    .restart local v4    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .restart local v5    # "argbEvaluator":Landroid/animation/ArgbEvaluator;
    .restart local v7    # "currentPointPositionNew":I
    .restart local v9    # "i":I
    .restart local v13    # "pointsSizeForDraw":I
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusNormal:I

    goto/16 :goto_4

    .line 404
    .restart local v11    # "neededSize":I
    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    goto/16 :goto_5

    .line 413
    .end local v11    # "neededSize":I
    :cond_a
    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->durationMillis:I

    .line 415
    .local v8, "duration":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->isNeedShowLeftTriangle(II)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->offset:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->current:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->isNeedShowLeftTriangle(II)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleLeft:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v4, v8}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->addTriangleAnimation(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;Landroid/animation/ArgbEvaluator;Ljava/util/List;I)I

    move-result v8

    .line 421
    :cond_b
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 422
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 423
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 424
    int-to-long v14, v8

    invoke-virtual {v3, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 425
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 435
    .end local v3    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v4    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v5    # "argbEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v8    # "duration":I
    :cond_c
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->current:I

    .line 436
    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->offset:I

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->invalidateSelf()V

    .line 438
    return-void

    .line 417
    .restart local v4    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .restart local v5    # "argbEvaluator":Landroid/animation/ArgbEvaluator;
    .restart local v8    # "duration":I
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->isNeedShowRightTriangle(II)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->offset:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->current:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->isNeedShowRightTriangle(II)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleRight:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v4, v8}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->addTriangleAnimation(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;Landroid/animation/ArgbEvaluator;Ljava/util/List;I)I

    move-result v8

    goto :goto_6

    .line 428
    .end local v4    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v5    # "argbEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v8    # "duration":I
    .end local v9    # "i":I
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    if-ge v9, v13, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v15, v14, v9

    if-ne v9, v7, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusBig:I

    :goto_8
    iput v14, v15, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->size:I

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->points:[Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    aget-object v15, v14, v9

    if-ne v9, v7, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorSelect:I

    :goto_9
    iput v14, v15, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleRight:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    iput v15, v14, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->triangleLeft:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    iput v15, v14, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    .line 428
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 429
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->radiusNormal:I

    goto :goto_8

    .line 430
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->colorNormal:I

    goto :goto_9
.end method

.method public setPageCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 371
    if-lez p1, :cond_0

    .end local p1    # "count":I
    :goto_0
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->count:I

    .line 372
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->current:I

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->setCurrentPage(IZ)V

    .line 373
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->invalidateSelf()V

    .line 374
    return-void

    .restart local p1    # "count":I
    :cond_0
    move p1, v0

    .line 371
    goto :goto_0
.end method
