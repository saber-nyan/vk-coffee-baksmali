.class Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;
.super Ljava/lang/Object;
.source "CropController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/crop/CropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringbackRunnable"
.end annotation


# instance fields
.field private currentScale:F

.field private currentX:F

.field private currentY:F

.field private final finalScale:F

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/vk/attachpicker/crop/CropController;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/crop/CropController;FFF)V
    .locals 7
    .param p2, "targetScale"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F

    .prologue
    const/4 v1, 0x0

    .line 299
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentScale:F

    .line 293
    iput v1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentX:F

    .line 294
    iput v1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentY:F

    .line 300
    invoke-static {p1}, Lcom/vk/attachpicker/crop/CropController;->access$000(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->finalScale:F

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 304
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    invoke-virtual {p1}, Lcom/vk/attachpicker/crop/CropController;->onAnimationStart()V

    .line 307
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;-><init>(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;Lcom/vk/attachpicker/crop/CropController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;-><init>(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;Lcom/vk/attachpicker/crop/CropController;FFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    return-void

    .line 302
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .prologue
    .line 288
    iget v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentScale:F

    return v0
.end method

.method static synthetic access$102(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;
    .param p1, "x1"    # F

    .prologue
    .line 288
    iput p1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .prologue
    .line 288
    iget v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentX:F

    return v0
.end method

.method static synthetic access$302(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;
    .param p1, "x1"    # F

    .prologue
    .line 288
    iput p1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentX:F

    return p1
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .prologue
    .line 288
    iget v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentY:F

    return v0
.end method

.method static synthetic access$402(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;
    .param p1, "x1"    # F

    .prologue
    .line 288
    iput p1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->currentY:F

    return p1
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .prologue
    .line 288
    iget v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->finalScale:F

    return v0
.end method


# virtual methods
.method public cancelTranslate()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 355
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    :cond_0
    return-void
.end method
