.class Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;
.super Ljava/lang/Object;
.source "CropController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;-><init>(Lcom/vk/attachpicker/crop/CropController;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

.field final synthetic val$targetScale:F

.field final synthetic val$this$0:Lcom/vk/attachpicker/crop/CropController;

.field final synthetic val$translateX:F

.field final synthetic val$translateY:F


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;Lcom/vk/attachpicker/crop/CropController;FFF)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iput-object p2, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$this$0:Lcom/vk/attachpicker/crop/CropController;

    iput p3, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$targetScale:F

    iput p4, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$translateX:F

    iput p5, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$translateY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 323
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v8, v8, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController;->access$000(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    if-nez v8, :cond_0

    .line 347
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 329
    .local v7, "value":F
    iget v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$targetScale:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    add-float v4, v9, v8

    .line 330
    .local v4, "newScale":F
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$100(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F

    move-result v8

    div-float v1, v4, v8

    .line 331
    .local v1, "deltaScale":F
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v9, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v9}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$100(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F

    move-result v9

    mul-float/2addr v9, v1

    invoke-static {v8, v9}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$102(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;F)F

    .line 332
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v8, v8, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController;->access$000(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    iget-object v9, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v9, v9, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-static {v9}, Lcom/vk/attachpicker/crop/CropController;->access$200(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/CropAreaProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v9

    iget-object v10, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v10, v10, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-static {v10}, Lcom/vk/attachpicker/crop/CropController;->access$200(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/CropAreaProvider;

    move-result-object v10

    invoke-interface {v10}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v1, v9, v10}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 334
    iget v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$translateX:F

    mul-float v5, v7, v8

    .line 335
    .local v5, "newX":F
    iget v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->val$translateY:F

    mul-float v6, v7, v8

    .line 336
    .local v6, "newY":F
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$300(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F

    move-result v8

    sub-float v2, v5, v8

    .line 337
    .local v2, "deltaX":F
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$400(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F

    move-result v8

    sub-float v3, v6, v8

    .line 338
    .local v3, "deltaY":F
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v8, v8, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController;->access$000(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    .line 339
    .local v0, "currentScale":F
    mul-float v8, v2, v0

    iget-object v9, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v9}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$500(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F

    move-result v9

    div-float v2, v8, v9

    .line 340
    mul-float v8, v3, v0

    iget-object v9, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v9}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$500(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;)F

    move-result v9

    div-float v3, v8, v9

    .line 342
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v8, v8, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropController;->access$000(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 343
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v8, v5}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$302(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;F)F

    .line 344
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-static {v8, v6}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->access$402(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;F)F

    .line 346
    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$2;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v8, v8, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    goto/16 :goto_0
.end method
