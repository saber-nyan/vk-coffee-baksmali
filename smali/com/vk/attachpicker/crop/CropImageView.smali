.class public Lcom/vk/attachpicker/crop/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/crop/CropImageView$Delegate;
    }
.end annotation


# instance fields
.field private final MESSAGE_DROP_CENTER:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private cropController:Lcom/vk/attachpicker/crop/CropController;

.field private cropTouchListener:Lcom/vk/attachpicker/crop/CropTouchListener;

.field private delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

.field private final handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/attachpicker/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 387
    iput v4, p0, Lcom/vk/attachpicker/crop/CropImageView;->MESSAGE_DROP_CENTER:I

    .line 402
    new-instance v2, Lcom/vk/attachpicker/crop/CropImageView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/vk/attachpicker/crop/CropImageView$3;-><init>(Lcom/vk/attachpicker/crop/CropImageView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vk/attachpicker/crop/CropImageView;->handler:Landroid/os/Handler;

    .line 44
    sget-object v2, Lcom/vkcoffee/android/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 46
    .local v1, "circleCrop":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-direct {p0, p1, v1}, Lcom/vk/attachpicker/crop/CropImageView;->init(Landroid/content/Context;Z)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/crop/CropImageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vk/attachpicker/crop/CropImageView;Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/CropController;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;
    .param p1, "x1"    # Lcom/vk/attachpicker/crop/CropController;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropTouchListener:Lcom/vk/attachpicker/crop/CropTouchListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vk/attachpicker/crop/CropImageView;Lcom/vk/attachpicker/crop/CropTouchListener;)Lcom/vk/attachpicker/crop/CropTouchListener;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;
    .param p1, "x1"    # Lcom/vk/attachpicker/crop/CropTouchListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropTouchListener:Lcom/vk/attachpicker/crop/CropTouchListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/crop/CropImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->hasDropCenter()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/crop/CropImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->sendDropCenter()V

    return-void
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/crop/CropImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->cancelDropCenter()V

    return-void
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/crop/CropImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->dropToCenterAnimation()V

    return-void
.end method

.method private cancelDropCenter()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    return-void
.end method

.method private createMovePreviewToCenterAnimator(FFFFF)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "targetScale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "translateX"    # F
    .param p5, "translateY"    # F

    .prologue
    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 316
    .local v10, "imageScaleAnimator":Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    mul-float v9, p1, v0

    .line 317
    .local v9, "finalScale":F
    const/4 v0, 0x1

    new-array v2, v0, [F

    .line 318
    .local v2, "currentScale":[F
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    .line 320
    const/4 v0, 0x1

    new-array v7, v0, [F

    .line 321
    .local v7, "currentX":[F
    const/4 v0, 0x1

    new-array v8, v0, [F

    .local v8, "currentY":[F
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 323
    invoke-static/range {v0 .. v9}, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/crop/CropImageView;F[FFFFF[F[FF)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    return-object v10

    .line 314
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dropToCenterAnimation()V
    .locals 15

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropImageView;->disableAll()V

    .line 271
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 272
    .local v9, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 273
    new-instance v0, Lcom/vk/attachpicker/crop/CropImageView$2;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/crop/CropImageView$2;-><init>(Lcom/vk/attachpicker/crop/CropImageView;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropAspectRatio()F

    move-result v6

    .line 288
    .local v6, "cropAr":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v0, v6}, Lcom/vk/attachpicker/crop/CropOverlayView;->calculatePosition(F)Landroid/graphics/RectF;

    move-result-object v8

    .line 289
    .local v8, "newPosition":Landroid/graphics/RectF;
    iget v10, v8, Landroid/graphics/RectF;->left:F

    .line 290
    .local v10, "x0":F
    iget v12, v8, Landroid/graphics/RectF;->top:F

    .line 291
    .local v12, "y0":F
    iget v11, v8, Landroid/graphics/RectF;->right:F

    .line 292
    .local v11, "x1":F
    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    .line 295
    .local v13, "y1":F
    sub-float v0, v11, v10

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v2

    div-float/2addr v0, v2

    sub-float v2, v13, v12

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropHeight()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 297
    .local v1, "targetScale":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    .line 298
    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCenterX()F

    move-result v2

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCenterY()F

    move-result v3

    sub-float v0, v11, v10

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v10

    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    .line 299
    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCenterX()F

    move-result v4

    sub-float v4, v0, v4

    sub-float v0, v13, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v0, v12

    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    .line 300
    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCenterY()F

    move-result v5

    sub-float v5, v0, v5

    move-object v0, p0

    .line 297
    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/crop/CropImageView;->createMovePreviewToCenterAnimator(FFFFF)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 303
    .local v7, "imageScaleAnimator":Landroid/animation/ValueAnimator;
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    const-string/jumbo v4, "x0"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v10, v5, v14

    .line 304
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    const-string/jumbo v4, "y0"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v12, v5, v14

    .line 305
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    const-string/jumbo v4, "x1"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v11, v5, v14

    .line 306
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    const-string/jumbo v4, "y1"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v13, v5, v14

    .line 307
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 308
    invoke-static {v7}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateDecelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    .line 303
    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 310
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 311
    return-void
.end method

.method private hasDropCenter()Z
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "circleCrop"    # Z

    .prologue
    .line 94
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 96
    if-eqz p2, :cond_0

    .line 97
    new-instance v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/CropImageView;->addView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/CropImageView;->addView(Landroid/view/View;)V

    .line 103
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    goto :goto_0
.end method

.method private sendDropCenter()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->handler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 400
    return-void
.end method

.method private setTouchesEnabled(ZZZZ)V
    .locals 1
    .param p1, "rotate"    # Z
    .param p2, "move"    # Z
    .param p3, "cropOverlay"    # Z
    .param p4, "controls"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    invoke-interface {v0, p1}, Lcom/vk/attachpicker/crop/CropImageView$Delegate;->setAdjusterViewTouchEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    invoke-interface {v0, p4}, Lcom/vk/attachpicker/crop/CropImageView$Delegate;->setControlsTouchEnabled(Z)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropTouchListener:Lcom/vk/attachpicker/crop/CropTouchListener;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropTouchListener:Lcom/vk/attachpicker/crop/CropTouchListener;

    invoke-virtual {v0, p2}, Lcom/vk/attachpicker/crop/CropTouchListener;->setTouchEnabled(Z)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v0, p3}, Lcom/vk/attachpicker/crop/CropOverlayView;->setTouchEnabled(Z)V

    .line 379
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelPendingAnimations()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->cancelDropCenter()V

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropController;->cancelSpringback()V

    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropController;->springback(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public cropBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Lcom/vk/attachpicker/crop/CropController;->cropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public disableAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/vk/attachpicker/crop/CropImageView;->setTouchesEnabled(ZZZZ)V

    .line 354
    return-void
.end method

.method public enableAll()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/vk/attachpicker/crop/CropImageView;->setTouchesEnabled(ZZZZ)V

    .line 350
    return-void
.end method

.method public enableCrop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setTouchesEnabled(ZZZZ)V

    .line 366
    return-void
.end method

.method public enableMove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setTouchesEnabled(ZZZZ)V

    .line 362
    return-void
.end method

.method public enableRotate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setTouchesEnabled(ZZZZ)V

    .line 358
    return-void
.end method

.method public getBitmapHeight()F
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapWidth()F
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCropController()Lcom/vk/attachpicker/crop/CropController;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    return-object v0
.end method

.method public isDefaultGeometryState()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultState()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createMovePreviewToCenterAnimator$22(F[FFFFF[F[FFLandroid/animation/ValueAnimator;)V
    .locals 10
    .param p10, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 324
    invoke-virtual/range {p10 .. p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 325
    .local v7, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, p1, v9

    mul-float/2addr v9, v7

    add-float v4, v8, v9

    .line 326
    .local v4, "newScale":F
    const/4 v8, 0x0

    aget v8, p2, v8

    div-float v0, v4, v8

    .line 327
    .local v0, "deltaScale":F
    const/4 v8, 0x0

    aget v9, p2, v8

    mul-float/2addr v9, v0

    aput v9, p2, v8

    .line 328
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    invoke-virtual {v8, v0, p3, p4}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 330
    mul-float v5, v7, p5

    .line 331
    .local v5, "newX":F
    mul-float v6, v7, p6

    .line 332
    .local v6, "newY":F
    const/4 v8, 0x0

    aget v8, p7, v8

    sub-float v1, v5, v8

    .line 333
    .local v1, "deltaX":F
    const/4 v8, 0x0

    aget v8, p8, v8

    sub-float v2, v6, v8

    .line 334
    .local v2, "deltaY":F
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v3

    .line 335
    .local v3, "goCurrentScale":F
    mul-float v8, v1, v3

    div-float v1, v8, p9

    .line 336
    mul-float v8, v2, v3

    div-float v2, v8, p9

    .line 338
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 339
    const/4 v8, 0x0

    aput v5, p7, v8

    .line 340
    const/4 v8, 0x0

    aput v6, p8, v8

    .line 342
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 343
    return-void
.end method

.method public onImageGeometryChange()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/CropImageView$Delegate;->onImageGeometryChange()V

    .line 385
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 63
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v4

    .line 64
    .local v4, "oldCropWidth":F
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getX0()F

    move-result v5

    .line 65
    .local v5, "oldX0":F
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getY0()F

    move-result v6

    .line 67
    .local v6, "oldY0":F
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropAspectRatio()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/vk/attachpicker/crop/CropOverlayView;->initWithAspectRatio(F)V

    .line 69
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v1

    .line 70
    .local v1, "newCropWidth":F
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getX0()F

    move-result v2

    .line 71
    .local v2, "newX0":F
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getY0()F

    move-result v3

    .line 73
    .local v3, "newY0":F
    cmpl-float v7, v4, v9

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v7, :cond_0

    .line 74
    div-float v0, v1, v4

    .line 75
    .local v0, "deltaScale":F
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v6}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 77
    .end local v0    # "deltaScale":F
    :cond_0
    cmpl-float v7, v5, v9

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v7, :cond_1

    .line 78
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v7

    sub-float v8, v2, v5

    invoke-virtual {v7, v8, v9}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 80
    :cond_1
    cmpl-float v7, v6, v9

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v7, :cond_2

    .line 81
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v7

    sub-float v8, v3, v6

    invoke-virtual {v7, v9, v8}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 83
    :cond_2
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v7, :cond_3

    .line 84
    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropImageView;->cancelPendingAnimations()V

    .line 91
    return-void
.end method

.method public overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    return-object v0
.end method

.method public preview()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropController;->cancelSpringback()V

    .line 225
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropController;->reset(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getCropAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropOverlayView;->initWithAspectRatio(F)V

    .line 228
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degress"    # F

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/crop/CropController;->onRotate(F)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->hasDropCenter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropImageView;->sendDropCenter()V

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropImageView;->onImageGeometryChange()V

    .line 250
    return-void
.end method

.method public rotate90()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getBaseRotation()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 232
    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropController;->cancelSpringback()V

    .line 234
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/crop/CropController;->reset(I)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getCropAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/crop/CropOverlayView;->initWithAspectRatio(F)V

    .line 238
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropImageView;->onImageGeometryChange()V

    .line 239
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/GeometryState;Lcom/vk/attachpicker/crop/CropAspectRatio;ZZ)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "geometryState"    # Lcom/vk/attachpicker/crop/GeometryState;
    .param p3, "cropAspectRatio"    # Lcom/vk/attachpicker/crop/CropAspectRatio;
    .param p4, "enableTouch"    # Z
    .param p5, "isCrop"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v0, Lcom/vk/attachpicker/crop/CropImageView$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropImageView$1;-><init>(Lcom/vk/attachpicker/crop/CropImageView;Lcom/vk/attachpicker/crop/GeometryState;ZLcom/vk/attachpicker/crop/CropAspectRatio;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v7, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 211
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDelegate(Lcom/vk/attachpicker/crop/CropImageView$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView;->delegate:Lcom/vk/attachpicker/crop/CropImageView$Delegate;

    .line 127
    return-void
.end method

.method public setForcedAspectRatio(FZ)V
    .locals 2
    .param p1, "aspectRatio"    # F
    .param p2, "doSpringback"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropImageView;->cropController:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getCropAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/vk/attachpicker/crop/CropOverlayView;->setForcedAspectRatio(FFZ)V

    .line 115
    return-void
.end method

.method public setLinesVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView;->overlayView:Lcom/vk/attachpicker/crop/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/crop/CropOverlayView;->setLinesAndTransparentOverlayVisible(Z)V

    .line 216
    return-void
.end method
