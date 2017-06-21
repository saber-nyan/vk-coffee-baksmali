.class Lcom/vkcoffee/android/ui/PhotoView$4;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView;->animateIn(Landroid/graphics/Rect;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoView;

.field final synthetic val$clipBottom:I

.field final synthetic val$clipSize:I

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView;Landroid/graphics/Rect;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/PhotoView;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$clipBottom:I

    iput p4, p0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$clipSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 24

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 752
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 753
    .local v5, "pos":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/ui/ClippingImageView;->getLocationOnScreen([I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 755
    .local v7, "rectWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 756
    .local v6, "rectHeight":I
    int-to-float v0, v7

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v9, v17, v18

    .local v9, "scaleX":F
    int-to-float v0, v6

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 757
    .local v10, "scaleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v5, v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v14, v0

    .local v14, "transX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v5, v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v15, v0

    .line 758
    .local v15, "transY":F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 759
    .local v8, "scale":F
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 760
    .local v12, "tRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v17, v18

    .line 761
    .local v4, "ivRatio":F
    const/4 v3, 0x0

    .local v3, "clipV":I
    const/4 v2, 0x0

    .line 762
    .local v2, "clipH":I
    cmpl-float v17, v12, v4

    if-eqz v17, :cond_0

    .line 763
    cmpl-float v17, v12, v4

    if-lez v17, :cond_1

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v13, v17, v8

    .line 765
    .local v13, "th":F
    int-to-float v0, v6

    move/from16 v17, v0

    sub-float v17, v13, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    div-float v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 766
    int-to-float v0, v6

    move/from16 v17, v0

    sub-float v17, v13, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v15, v15, v17

    .line 773
    .end local v13    # "th":F
    :cond_0
    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 774
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/ClippingImageView;->setPivotX(F)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/ClippingImageView;->setPivotY(F)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/ClippingImageView;->setScaleX(F)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/ClippingImageView;->setScaleY(F)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/vkcoffee/android/ui/ClippingImageView;->setTranslationX(F)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/ClippingImageView;->setTranslationY(F)V

    .line 781
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 782
    .local v11, "set":Landroid/animation/AnimatorSet;
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "scaleX"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    .line 783
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "scaleY"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    .line 784
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "translationX"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    .line 785
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "translationY"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "windowBgAlpha"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    .line 786
    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    .line 787
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "clipBottom"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$clipBottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    add-int v23, v23, v3

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    .line 788
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "clipTop"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->val$clipSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    add-int v23, v23, v3

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    .line 789
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v19

    const-string/jumbo v20, "clipHorizontal"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v2, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    aput-object v19, v17, v18

    .line 782
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 790
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 791
    new-instance v17, Lcom/vkcoffee/android/ui/PhotoView$4$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView$4$1;-><init>(Lcom/vkcoffee/android/ui/PhotoView$4;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 798
    sget-object v17, Lcom/vkcoffee/android/ui/PhotoView;->interpolatorIn:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 799
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 800
    const/16 v17, 0x1

    return v17

    .line 768
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v17, v8

    .line 769
    .local v16, "tw":F
    int-to-float v0, v7

    move/from16 v17, v0

    sub-float v17, v16, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    div-float v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 770
    int-to-float v0, v7

    move/from16 v17, v0

    sub-float v17, v16, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v14, v14, v17

    goto/16 :goto_0

    .line 752
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 785
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
