.class Lcom/vkcoffee/android/gifs/GifViewer$1;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/gifs/GifViewer;->animateIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 26

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 260
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v7, v0, [I

    .line 261
    .local v7, "iArr":[I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v7, v0, [I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getLocationOnScreen([I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getViewLocation()Landroid/graphics/Rect;

    move-result-object v10

    .line 264
    .local v10, "originalLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProvider:Lcom/vkcoffee/android/gifs/GifViewer$Provider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/vkcoffee/android/gifs/GifViewer$Provider;->getClipTopBottom()[I

    move-result-object v3

    .line 265
    .local v3, "clip":[I
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 266
    .local v12, "rectWidth":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 267
    .local v11, "rectHeight":I
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v7, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 268
    .local v17, "transX":F
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v7, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 269
    .local v18, "transY":F
    int-to-float v0, v12

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v11

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 270
    .local v13, "scale":F
    int-to-float v0, v12

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 271
    .local v15, "tRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 272
    .local v9, "ivRatio":F
    const/4 v5, 0x0

    .line 273
    .local v5, "clipV":I
    const/4 v4, 0x0

    .line 274
    .local v4, "clipH":I
    cmpl-float v20, v15, v9

    if-eqz v20, :cond_0

    .line 275
    cmpl-float v20, v15, v9

    if-lez v20, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v16, v20, v13

    .line 277
    .local v16, "th":F
    int-to-float v0, v11

    move/from16 v20, v0

    sub-float v20, v16, v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    div-float v20, v20, v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 278
    int-to-float v0, v11

    move/from16 v20, v0

    sub-float v20, v16, v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v18, v18, v20

    .line 285
    .end local v16    # "th":F
    :cond_0
    :goto_0
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 286
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setPivotX(F)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setPivotY(F)V

    .line 289
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 290
    .local v14, "set":Landroid/animation/AnimatorSet;
    const/16 v20, 0x9

    move/from16 v0, v20

    new-array v2, v0, [Landroid/animation/Animator;

    .line 291
    .local v2, "animatorArr":[Landroid/animation/Animator;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v13, v23, v24

    const/16 v24, 0x1

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 292
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v13, v23, v24

    const/16 v24, 0x1

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 293
    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v17, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 294
    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 295
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [I

    .line 296
    .local v8, "iArr2":[I
    const/16 v20, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mRootView:Lcom/vkcoffee/android/gifs/GifRootLayout;

    move-object/from16 v21, v0

    const-string v22, "backgroundAlpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0xff

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 297
    const/16 v20, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    const-string v22, "clipTop"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget v25, v3, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v13

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v25, v25, v5

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 298
    const/16 v20, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    const-string v22, "clipBottom"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    aget v25, v3, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v13

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v25, v25, v5

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 299
    const/16 v20, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v21, v0

    const-string v22, "clipHorizontal"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v4, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 300
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [F

    .line 301
    .local v6, "fArr":[F
    const/16 v20, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v2, v20

    .line 302
    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 303
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 304
    sget-object v20, Lcom/vkcoffee/android/ui/PhotoView;->interpolatorIn:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    const/16 v20, 0x1

    return v20

    .line 280
    .end local v2    # "animatorArr":[Landroid/animation/Animator;
    .end local v6    # "fArr":[F
    .end local v8    # "iArr2":[I
    .end local v14    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$1;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v20, v13

    .line 281
    .local v19, "tw":F
    int-to-float v0, v12

    move/from16 v20, v0

    sub-float v20, v19, v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    div-float v20, v20, v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 282
    int-to-float v0, v12

    move/from16 v20, v0

    sub-float v20, v19, v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sub-float v17, v17, v20

    goto/16 :goto_0

    .line 301
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
