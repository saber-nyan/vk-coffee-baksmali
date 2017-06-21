.class Lcom/vkcoffee/android/ui/PhotoView$5;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView;->animateOut(Landroid/graphics/Rect;IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoView;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$clipBottom:I

.field final synthetic val$clipSize:I

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView;Landroid/graphics/Rect;IILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/PhotoView;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$clipBottom:I

    iput p4, p0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$clipSize:I

    iput-object p5, p0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 23

    .prologue
    .line 819
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$1800(Lcom/vkcoffee/android/ui/PhotoView;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 820
    const/4 v15, 0x1

    .line 879
    :goto_0
    return v15

    .line 822
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2800(Lcom/vkcoffee/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$2900(Lcom/vkcoffee/android/ui/PhotoView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$1802(Lcom/vkcoffee/android/ui/PhotoView;Z)Z

    .line 825
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/PhotoView;->invalidate()V

    .line 826
    const/4 v15, 0x2

    new-array v5, v15, [I

    fill-array-data v5, :array_0

    .line 827
    .local v5, "pos":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/vkcoffee/android/ui/ClippingImageView;->getLocationOnScreen([I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v7, v15, v16

    .local v7, "scaleX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 829
    .local v8, "scaleY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget v16, v5, v16

    sub-int v15, v15, v16

    int-to-float v12, v15

    .local v12, "transX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    const/16 v16, 0x1

    aget v16, v5, v16

    sub-int v15, v15, v16

    int-to-float v13, v15

    .line 830
    .local v13, "transY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 831
    .local v6, "scale":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 832
    .local v10, "tRatio":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v4, v15, v16

    .line 833
    .local v4, "ivRatio":F
    const/4 v3, 0x0

    .local v3, "clipV":I
    const/4 v2, 0x0

    .line 834
    .local v2, "clipH":I
    cmpl-float v15, v10, v4

    if-eqz v15, :cond_1

    .line 835
    cmpl-float v15, v10, v4

    if-lez v15, :cond_2

    .line 836
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v11, v15, v6

    .line 837
    .local v11, "th":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    div-float/2addr v15, v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 838
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    .line 845
    .end local v11    # "th":F
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->setPivotX(F)V

    .line 846
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->setPivotY(F)V

    .line 847
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$500(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$3000(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v17

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->setScaleX(F)V

    .line 848
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$500(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$3000(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v17

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->setScaleY(F)V

    .line 849
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$700(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2700(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$Texture;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropWidth:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/PhotoView;->access$500(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$3000(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v19

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->setTranslationX(F)V

    .line 850
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/ui/PhotoView;->access$1100(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2700(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$Texture;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropHeight:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/ui/PhotoView;->access$500(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/ui/PhotoView;->access$3000(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v19

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/vkcoffee/android/ui/ClippingImageView;->setTranslationY(F)V

    .line 851
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    invoke-static {v15}, Lme/grishka/appkit/utils/V;->cancelVisibilityAnimation(Landroid/view/View;)V

    .line 852
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 853
    .local v9, "set":Landroid/animation/AnimatorSet;
    const/16 v15, 0x8

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v6, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    .line 854
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v6, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    .line 855
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    .line 856
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v13, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "windowBgAlpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v21, v0

    .line 857
    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/ui/PhotoView;->access$3100(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v21

    const/high16 v22, 0x437f0000    # 255.0f

    mul-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    .line 858
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "clipBottom"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$clipBottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v21, v21, v3

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    .line 859
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "clipTop"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$clipSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v21, v21, v3

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    move-object/from16 v17, v0

    .line 860
    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v17

    const-string/jumbo v18, "clipHorizontal"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v2, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    .line 853
    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 861
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 862
    new-instance v15, Lcom/vkcoffee/android/ui/PhotoView$5$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkcoffee/android/ui/PhotoView$5$1;-><init>(Lcom/vkcoffee/android/ui/PhotoView$5;)V

    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 877
    sget-object v15, Lcom/vkcoffee/android/ui/PhotoView;->interpolatorIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 878
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 879
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 840
    .end local v9    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float v14, v15, v6

    .line 841
    .local v14, "tw":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v14, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    div-float/2addr v15, v6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 842
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v14, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v12, v15

    goto/16 :goto_1

    .line 826
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
