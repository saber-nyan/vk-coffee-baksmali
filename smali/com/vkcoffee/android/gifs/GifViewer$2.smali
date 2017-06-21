.class Lcom/vkcoffee/android/gifs/GifViewer$2;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/gifs/GifViewer;->animateOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/gifs/GifViewer;

.field private final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iput-object p2, p0, Lcom/vkcoffee/android/gifs/GifViewer$2;->val$after:Ljava/lang/Runnable;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 27

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 317
    .local v9, "iArr":[I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getLocationOnScreen([I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getViewLocation()Landroid/graphics/Rect;

    move-result-object v11

    .line 320
    .local v11, "originalLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getClipTopBottom()[I

    move-result-object v5

    .line 321
    .local v5, "clip":[I
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 322
    .local v13, "rectWidth":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 323
    .local v12, "rectHeight":I
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v9, v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    .line 324
    .local v18, "transX":F
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v9, v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    .line 325
    .local v19, "transY":F
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getHeight()I

    move-result v22

    div-int v22, v12, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 326
    .local v14, "scale":F
    int-to-float v0, v13

    move/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 327
    .local v16, "tRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v10, v21, v22

    .line 328
    .local v10, "ivRatio":F
    const/4 v7, 0x0

    .line 329
    .local v7, "clipV":I
    const/4 v6, 0x0

    .line 330
    .local v6, "clipH":I
    cmpl-float v21, v16, v10

    if-eqz v21, :cond_0

    .line 331
    cmpl-float v21, v16, v10

    if-lez v21, :cond_2

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v17, v21, v14

    .line 333
    .local v17, "th":F
    int-to-float v0, v12

    move/from16 v21, v0

    sub-float v21, v17, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    div-float v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 334
    int-to-float v0, v12

    move/from16 v21, v0

    sub-float v21, v17, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v19, v19, v21

    .line 341
    .end local v17    # "th":F
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setPivotX(F)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setPivotY(F)V

    .line 343
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 344
    .local v15, "set":Landroid/animation/AnimatorSet;
    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v4, v0, [Landroid/animation/Animator;

    .line 345
    .local v4, "animatorArr":[Landroid/animation/Animator;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    const-string v23, "scaleX"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v14, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 346
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    const-string v23, "scaleY"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v14, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 347
    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    const-string v23, "translationX"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v18, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 348
    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    const-string v23, "translationY"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v19, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 349
    const/16 v21, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mRootView:Lcom/vkcoffee/android/gifs/GifRootLayout;

    move-object/from16 v22, v0

    const-string v23, "backgroundAlpha"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mRootView:Lcom/vkcoffee/android/gifs/GifRootLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getBackgroundAlpha()I

    move-result v26

    aput v26, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 350
    const/16 v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    const-string v23, "clipTop"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget v26, v5, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v14

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    add-int v26, v26, v7

    aput v26, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 351
    const/16 v21, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    const-string v23, "clipBottom"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    aget v26, v5, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v14

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    add-int v26, v26, v7

    aput v26, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 352
    const/16 v21, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    const-string v23, "clipHorizontal"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput v6, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 353
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v8, v0, [F

    .line 354
    .local v8, "fArr":[F
    const/16 v21, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    move-object/from16 v22, v0

    const-string v23, "alpha"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    invoke-static/range {v22 .. v24}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    aput-object v22, v4, v21

    .line 355
    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 356
    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->val$after:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 358
    new-instance v21, Lcom/vkcoffee/android/gifs/GifViewer$2$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->val$after:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/gifs/GifViewer$2$1;-><init>(Lcom/vkcoffee/android/gifs/GifViewer$2;Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    :cond_1
    sget-object v21, Lcom/vkcoffee/android/ui/PhotoView;->interpolatorIn:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 368
    const/16 v21, 0x1

    return v21

    .line 336
    .end local v4    # "animatorArr":[Landroid/animation/Animator;
    .end local v8    # "fArr":[F
    .end local v15    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$2;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v21, v14

    .line 337
    .local v20, "tw":F
    int-to-float v0, v13

    move/from16 v21, v0

    sub-float v21, v20, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    div-float v21, v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 338
    int-to-float v0, v13

    move/from16 v21, v0

    sub-float v21, v20, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v18, v18, v21

    goto/16 :goto_0

    .line 354
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
